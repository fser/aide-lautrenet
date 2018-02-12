Title: 03. Installation de Drupal 
Date: 2010-10-30 14:06:11
Category: 14. Installer des logiciels sur lautre.net
Tags: old
Summary:  . 

Url Rewriting 

Il peut arriver que l'installation de Drupal, en fonction de la configuration des serveurs web, pose problème. Drupal annonce que le mod rewrite ne fonctionne pas.

Pour pallier ce problème, éditez le fichier htaccess et ajouter la ligne suivante :


<quote>RewriteBase /</quote>


et éventuellement

<quote>
RewriteBase /sous/repertoire/</quote>


Vérifier également que la ligne :


<quote>RewriteEngine On</quote>


est bien présente.


**Enregistrement de fichiers** 

Sur drupal6, il se peut que vous ayez une erreur du type :


<quote>warning: tempnam() [function.tempnam]: open_basedir restriction in effect. File() is not within the allowed path(s): (.) in /.../includes/file.inc on line 756.</quote>


Pour résoudre ce problème, créez le dossier **/sites/default/files/tmp** sur votre ftp
