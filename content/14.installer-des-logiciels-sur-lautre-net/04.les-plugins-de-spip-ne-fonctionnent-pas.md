Title: 04. Les plugins de Spip ne fonctionnent pas ! 
Date: 2010-10-30 14:10:04
Category: 14. Installer des logiciels sur lautre.net
Tags: old
Summary:  . 

Le message d'erreur suivant lors de l'installation d'un plugin Spip est dû à un patch de sécurité installé sur le PHP de l'Autre.net (patch Suhosin) :


<quote>Not Found
The requested URL /spip.php was not found on this server.</quote>


Pour contourner ce problème vous pouvez suivre la discussion qui se trouve ici :
_ http://forum.spip.org/fr_199695.html

Et qui contient une solution possible données par denisb en bas de page :

effectuer la correction en amont (encore plus haut dans lappel de fonction), à savoir dans ## ecrire/inc/securiser_action.php


**les lignes 24, 25 et 26 à remplacer par :**
<quote>24: if ($action) {
25:  if ( defined('_REMOTE_URL_INC') ) {
_ 26:   $redirect=str_replace(url_de_base(),'',$redirect);
_ 27:  }
_ 28:  return securiser_action_auteur($action, $arg, $redirect,$mode, $att);
_ 29: }
_ 30: else {</quote>

**avec, dans mes_options.php :**

<quote>// décommenter la ligne ci-dessous
_ // si la configuration de votre hébergement
_ // interdit l'inclusion d'url distante
_ #define('_REMOTE_URL_INC', 1);</quote>


