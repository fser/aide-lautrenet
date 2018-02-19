Title: 09. Problèmes sur dokuwiki 
Date: 2010-11-14 23:10:55
Category: 14. Installer des logiciels sur lautre.net
Tags: old
Summary:  . 

**IMPORTANT :** la solution 1 est la solution la plus vivement conseillée. Les autres solutions proposées risquent de ne pas résoudre d'autres problèmes pouvant se poser par la suite, notamment lors de l'édition d'une page.

**Solution 1 : modifier la config sans souci**

Pareil que la solution 3, mais sans rien se demander.

Placer à la fin du fichier conf/local.php


<quote>$conf['savedir'] = dirname(__FILE__)."/../data";</quote>


Attention, afin que le panneau de configuration n'écrase pas les modifications, vous pouvez (devez) mettre cette ligne de configuration dans le fichier local.protected.php


**Solution 2 : corriger docuwiki 
**

Le bug est en fait dû au fait que Docuwiki utilise une variable générée par Apache. Le contenu de cette variable est un lien symbolique qui n'est pas résolu alors même que PHP résout les liens pour sa politique de sécurité "open_basedir".

Dans inc/init.php ligne 427, remplacer


<quote>$base=dirname($_SERVER['SCRIPT_FILENAME']);</quote>


par


<quote>$base=dirname(realpath($_SERVER['SCRIPT_FILENAME']));</quote>


**Solution 3 : modifier la config** 

Si, depuis la migration vers PHP5, vous rencontrez des problèmes avec dokuwiki (message d'erreur open_basedir, affichage sans style, etc.), essayez de modifier le fichier conf/local.php de la manière suivante.

Si le fichier contient une ligne qui ressemble à ça, supprimez-la :


<quote>$conf['savedir'] = './data';</quote>


Ajoutez une ligne ressemblant à ceci :


<quote>$conf['savedir'] = '/var/alternc/html/t/toto/wiki/data';</quote>


Où 'toto' est le nom de votre compte AlternC, 't' est la première lettre de ce nom, et 'wiki' l'éventuel sous-répertoire dans lequel dokuwiki est installé. Ainsi, si votre compte est 'bibi' et que dokuwiki est à la racine de votre espace, vous pouvez mettre :


<quote>$conf['savedir'] = '/var/alternc/html/b/bibi/data';</quote>


**Solution 4 : modifier le code de dokuwiki** 

Editer le fichier inc/init.php et aux alentours de la ligne 448, modifier le bloc :


<quote>// check then return valid path or filename
if (file_exists($finalpath)) {
  return ($finalpath);
}</quote>


Par (juste un @ en plus) :


<quote>// check then return valid path or filename
if (@file_exists($finalpath)) {
  return ($finalpath);
}</quote>


 