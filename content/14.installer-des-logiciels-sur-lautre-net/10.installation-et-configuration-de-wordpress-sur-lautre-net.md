Title: 10. Installation et configuration de wordpress sur lautre.net 
Date: 2014-01-06 22:14:18
Category: 14. Installer des logiciels sur lautre.net
Tags: old
Summary:  . 

Installation et configuration de wordpress sur lautre.net

La version 3.7 de wordpress fonctionne sans soucis. Donc après avoir télécharger une version de wordpress, suivez les instructions de wordpress.org pour les modifications de wp-sample-config.php.

**Modifications wp-config.php et paramètres mysql**

En ce qui concerne les informations a mettre dans ce fichier, il va falloir faire quelque modifications sur votre bureau altern-C de lautre.net.

Vous allez dans « bases de données », sous mysql à gauche. Vous créez une nouvelle base de donnée avec le nom que vous voulez. 

Ensuite vous allez dans « utilisateurs mysql » et vous créez un nouvel utilisateur (perso je lai fait avec le même nom que mon compte à savoir monnom_monnom). Ensuite vous cliquez sur « droits » à coté de lutilisateur que vous avez créé et vous lui attribuez tous les droits pour la base de donnée que vous avez créé juste avant.

Ensuite vous allez dans « admin mysql ». Vous allez arriver sur une page internet et dans la case « interclassement pour la connexion mysql » vous changez en « utf8_general_ci ».

Vous retournez dans « base de données » sur votre bureau Altern-C et vous pouvez, si vous le souhaitez, changer le mot de passe. Sinon vous cliquez sur « afficher les paramètres sql actuels » et vous rentrez ces paramètres dans le fichier wp-config de wordpress. Il y aura juste le nom dutilisateur qui va être celui que vous avez créé (nomdutilisateur_cequevousavezchoisi) et pas celui qui est écrit dans les paramètres actuels.

Vous enregistrer ce fichier.

Gestion des domaines et sous-domaines

Ensuite selon où vous souhaitez mettre votre dossier wordpress et donc votre site sous wordpress, il va falloir changer les redirections domaines et sous domaines.

De base, vous pouvez mettre votre dossier wordpress dans le dossier www de votre site et aller à ladresse [www.->http://www.votresite.lautre.net/wordpress/wp-admin/install.php][{votresite}->http://www.votresite.lautre.net/wordpress/wp-admin/install.php][.lautre.net/wordpress/wp-admin/install.php->http://www.votresite.lautre.net/wordpress/wp-admin/install.php]

Mais votre wordpress sera alors à ladresse ci dessus et non à la racine.

Pour se faire, vous cliquez sur votre nom de domaine sous « domaines » a gauche.

Si vous souhaitez avoir votre wordpress à la racine de votre site, il va falloir rediriger votre sous domaine [www.->http://www.votresite.lautre.net/][{votresite}->http://www.votresite.lautre.net/][.lautre.net->http://www.votresite.lautre.net/] (configuration de base sur lautre.net) vers le dossier /wordpress (ou le nom de dossier que vous avez choisi pour votre dossier qui contient tous les fichier wordpress)

Vous avez juste à cliquer, dans la troisième ligne, sur la feuille avec un crayon, à gauche de la croix rouge et vous sélectionnez « géré en local » si ce nest pas déjà fait et à coté, vous écrivez /wordpress.

Vous pouvez donc envoyer, par ftp votre dossier wordpress à la racine de votre domaine et installer wordpress en allant sur www.{votresite}.lautre.net/wp-admin/install.php