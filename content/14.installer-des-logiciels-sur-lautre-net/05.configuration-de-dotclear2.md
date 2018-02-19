Title: 05. Configuration de Dotclear2 
Date: 2010-11-13 18:50:35
Category: 14. Installer des logiciels sur lautre.net
Tags: old
Summary:  . 

Installation automatique 

Une explication de l'utilisation de l'installateur automatique de dotclear sur lautre.net se trouve ici : http://www.alternatifs.eu/jip/cs/Installation-Dotclear-2.html
Afficher les images générées par dotclear sur lautre.net : ¶

Par sécurité, tous les fichiers dont le nom commence par un point sont protégé. http://aide2.lautre.net/wiki/TrucsEtAstuces/Vds/Secu1

Il est possible de "déprotéger" un répertoire, pour dotclear le répertoire /dotclear/public/ avec une directive dans un .htaccess

Dans le répertoire /dotclear/public/ créer un fichier .htaccess et coller le contenu suivant :


````
<FilesMatch "\.(png|gif|jpe?g)$">
allow from all
</FilesMatch>
````

Cette directive autorisera l'affichage de tous les fichiers dont l'extension est .png, gif, jpeg ou jpg même si leur nom commence par un point.
