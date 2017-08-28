Title: 01. Mon logiciel a besoin d'afficher un fichier commençant par un point, et rien ne s'affiche. Pourquoi ? 
Date: 2010-11-13 18:20:51
Category: 12. Sur les services web
Tags: old
Summary:  . 

La création d'une machine virtuelle considère le répertoire /home comme contenant toutes vos données hébergées par lautre.net. Ainsi, un certain nombre de fichiers sont crées automatiquement par linux a la racine de votre home.

De fait, si votre serveur web pointe a la racine de votre site web, alors les fichiers : .bashrc, .bash_history, .svn, .ssh pourraient etre accessibles par n'importe qui via un simple naviguateur web.

Pour cette raison, les serveurs web de lautre.net n'affichent pas les fichiers commencant par un point (.) .

Si vous souhaitez qu'il l'affiche tout de même, créez un fichier htaccess avec la directive adéquate.
