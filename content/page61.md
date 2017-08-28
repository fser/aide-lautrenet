Title: 06. Configuration de Moodle 
Date: 2010-10-30 14:21:09
Category: 14. Installer des logiciels sur lautre.net
Tags: old
Summary:  . 

Si Moodle vous affiche des pages blanches, ou des erreurs de type "Failed to initialize storage module: memcache", vous pouvez essayer d'ajouter simplement la ligne suivante :


<quote>session_start();</quote>
 

au tout début du fichier config.php 