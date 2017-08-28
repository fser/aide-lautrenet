Title: 07. Configuration de PHP MyBibli « PMB » 
Date: 2010-10-30 14:23:42
Category: 14. Installer des logiciels sur lautre.net
Tags: old
Summary:  . 

PMB est installable sur la plateforme de L'Autre-Net.
Cache des vignettes depuis de multiples sources 

À partir de bouts de codes d'un peu partout, et sur une idée de http://www.sigb.net/wiki/wikka.php?wakka=VignettesAmazon

C'est un script qui fait le même genre, mais à la volée.

C'est pas hyper blindé, mais ça fonctionne.

Evidemment, il faut que le dossier « images/vignettes/ » existe, et que les droits permettent d'écrire dedans (dans le doute, c'est comme pour le dossier « temp/ » ).

- Il faut copier et sauvegarder ce qui est entre « <?php » est « ?> ».
- Ne pas oublier de modifier le paramètre « $vignette_dir »
- l'appel se fait via http://pmb.url/ledossier/amazon-vignette.php?ASIN=!!isbn!! 




<quote><?php
// amazon-vignette.php
// Gaétan RYCKEBOER - 20-11-2008a
// diffusé sous license GPL
// écrit à partir de bouts de codes GPL d'un peu partout.
//
// récupère une vignette chez amazon, et la met en cache, à partir de son
ISBN, ASIN, EAN.
// Transformation de code spécifique par les librairies de PMB, facultative.

// hasImage : verifie que l'image dont l'URL est fournie, est bien une image
correcte.
function hasImage($URL_in) {
	$url = parse_url($URL_in);
	if(isset($url['port'])){
		$port = $url['port'];
	}else{
		$port = 80;
	}

	if (!$fp = fsockopen ($url['host'], $port, $errno, $errstr)){
		$out = false;
	}else{
		$request = "GET ".$url['path']." HTTP/1.1\n";
		$request .= "Host: ".$url['host']."\n";
		$request .= "Connection: Close\r\n";
		$request .= "\n";
		$fput = fputs($fp, $request);
		$response='';
		while (!feof($fp))
		{
			$response.=fread($fp,4096);
		}
		fclose ($fp);

		// Amazon renvoit un GIF vide s'il n'y a pas d'image, un jpeg sinon.
		if (ereg('image/gif',$response)) {
			$out=false;
		} else {
			$out = true;
		}
	}
	return $out;
}

/////////////////////////////////////////////////////

require_once ("./includes/error_report.inc.php") ;
require_once ("./includes/global_vars.inc.php") ;
require_once ("./includes/config.inc.php");

$include_path = "./".$include_path;
$class_path = "./".$class_path;
$javascript_path = "./".$javascript_path;
$styles_path = "./".$styles_path;

include("$include_path/error_handler.inc.php");
include("$include_path/misc.inc.php");
include("$include_path/isbn.inc.php");

//error_reporting('E_NONE');

// ne pas oublier de modifier ce paramètre
$vignette_dir="/home/mondossieramoiquejai/images/vignettes/";

$source="local";
$asin = "";
$isbn = "";
$asin = $_REQUEST['ASIN'];
$filedata = "";

if (isISBN ($asin)) { // remise en forme du code ISBN/ASIN/EAN
	$isbn = preg_replace('/-|\.| /','',$asin);
	if (isEAN($isbn)) {
		$isbn=EANtoISBN10($isbn);
		$isbn = preg_replace('/-|\.| /','',$isbn);
	}
	$asin=$isbn;

$url  = "http://images-eu.amazon.com/images/P/".$asin.".01.MZZZZZZZ.jpg";
$url2 = "http://images.amazon.com/images/P/".$asin.".01.MZZZZZZZ.jpg";
//$url = "http://www.alapage.com/resize.php?ref=".$asin."&type=1&w=150&h=150";

// A: le cache disque
$remoteimage = fopen($vignette_dir.$asin.".jpg",'rb');

// B: lest deux URL Amazon
if ((!$remoteimage) && hasImage($url)) {
	$remoteimage = fopen($url, 'rb');
	$source="amazon";
}
if ((!$remoteimage) && hasImage($url2)) {
	$remoteimage = fopen($url2, 'rb');
	$source="amazon";
}
} // isISBN - Fallback image.

// C; c'est un echec, on passe sur la fallback.
if (!$remoteimage) {
	$remoteimage = fopen($vignette_dir."inconnu.jpg",'rb');
}

// recuperation de l'image
while (!feof($remoteimage)) {
	$filedata.= fread($remoteimage,1024);
}
fclose($remoteimage);

// sauvegarde en cache, si tout s'est bien passé
if ($source == "amazon") {
	$localimage = fopen($vignette_dir.$asin.".jpg", 'wb');
	fwrite($localimage,$filedata);
}

// affichage de l'image
header("Content-Type: image/jpg");
print($filedata);
?></quote>

