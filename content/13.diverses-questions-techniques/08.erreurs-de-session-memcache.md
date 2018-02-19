Title: 08. Erreurs de session memcache  
Date: 2010-10-29 21:39:20
Category: 13. Diverses questions techniques
Tags: old
Summary:  . 



Vérifiez que vous n'avez pas quelque part dans votre répertoire ou l'un de ses parents un fichier .htaccess qui contiendrait une ligne du type :


<quote>php_value session.save_path /var/alternc/html/m/moncompte/sessions</quote>


Si c'est le cas, commentez-là en ajoutant un # devant...
