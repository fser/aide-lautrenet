Title: 09. Comment connaître le chemin d'accès absolu à mon compte ?  
Date: 2010-10-29 21:41:48
Category: 13. Diverses questions techniques
Tags: old
Summary:  . 


Le chemin d'accès absolu vers votre compte est de la forme :


{/var/alternc/html/x/xxxxx/}


Où le 1er x est l'initial du nom de votre compte et où {xxxxx} est le nom de votre compte au complet.

Pour avoir d'autres informations sur les variables de votre compte, pensez à créer un fichier phpinfo. Pour cela, copiez le code suivant dans un fichier vide que vous déposerez à la racine de votre compte. Nommez-le (par exemple) phpinfo.php (seule l'extention php est réellement importante).


<quote><?php phpinfo(); ?></quote>


Ensuite chargez ce fichier dans votre fureteur préféré. L'information concernant le chemin d'accès absolu à vos fichiers se trouve dans la section PHP Core sous la rubrique {open_basedir}.
