Title: 08. Installer Spip et un nom de domaine 
Date: 2010-10-30 14:39:28
Category: 14. Installer des logiciels sur lautre.net
Tags: old
Summary:  . 

Spip est un CMS très en vogue, très puissant, très personnalisable.

Son installation est triviale. Voilà la marche à suivre.

**Objectif** 

Installer Spip et faire pointer notre nom de domaine dessus.
Prérequis ¶
- un [nom de domaine->https://aide.lautre.net/wiki/TrucsEtAstuces/Dns/ServeursDnsDeLautreNet] 
- une base de donnée 
- spip_loader.php (le plus simple, autrement l'archive zip de spip) 

**Base de données**

L'Autre Net fournit 6 bases de données. Spip n'en a besoin que d'une. Pour la créer, rendez vous dans le bureau : https://panel.lautre.net.

Dans le menu de gauche, cliquez sur le sous-menu Bases de données, du menu MySQL (1 sur l'image)

Dans la partie de droite, cliquez sur Création d'une base de données (2 sur l'image)

http://tiiad.lautre.net/lautre/access_create_db.png

Dans la fenêtre qui s'ouvre on vous demande de renseigner un nom pour votre base de données. Son nom sera forcément de la forme login_quelquechose, où login est votre login de Lautre Net, et quelquechose est ce que vous voulez :). Pour des raisons mnémotechniques il peut être judicieux de l'appeler login_spip (3 sur l'image)

Puis on valide en cliquant sur Créer cette nouvelle base. (4 sur l'image)

http://tiiad.lautre.net/lautre/create_db.png

La base est créée.

Par défaut, aucun utilisateur n'est créé, les coordonnées de la base sont donc :
|Nom d'utilisateur|votre login principal|
|Mot de passe|votre mot de passe principal|
|Serveur SQL|sql.lautre.net|
|Base de données|votre-login-principal_spip|

Pour les afficher à nouveau si vous les avez oublié, cochez votre base dans la liste des bases, et cliquez sur Afficher les paramètres SQL actuels. (5 et 6 sur la première image). Ça vous donnera un récapitulatif de la forme :

http://tiiad.lautre.net/lautre/param_db.png

**Spip** 


Parce que quand c'est bien rangé c'est mieux, je conseille de créer un répertoire spip/ à la racine de notre site dans lequel on installera Spip. C'est pas une obligation, mais pour l'exemple suivant, on va faire ainsi.

Avec votre client FTP, connectez vous sur votre compte. Les coordonnées sont les suivantes :
|Nom d'utilisateur|votre login principal|
|Mot de passe|votre mot de passe principal|
|Serveur FTP ou hostname|lautre.net|


On peut aussi passer par le gestionnaire de fichier du bureau. Dans le bandeau de gauche, Gestionnaire de fichiers. Puis dans la page qui s'affiche, tout en haut, dans le champ de droite, on écrit spip, on vérifie que la puce répertoire (juste en dessous) soit cochée, et on clique sur Créer.

http://tiiad.lautre.net/lautre/create_spip_dir.png

Maintenant, récupérez le fichier spip_loader.php, accessible depuis la page de téléchargement de Spip, sous le paragraphe Installation automatique (lien direct de spip_loader.php).

Ce fichier permet d'installer la dernière version de Spip directement depuis les serveurs de Spip. Non comptant d'être sûr d'avoir la dernière version, ça évite de devoir récupérer le fichier ZIP sur sa machine, de le décompresser, et via ftp de devoir le mettre sur Lautre Net. Ce genre d'opération peut parfois poser des soucis, comme la corruption de fichiers.

Enregistrer le fichier (dans votre navigateur fichier -> enregistrer sous ...) sur votre ordinateur.

Puis via votre client ftp ou via le gestionnaire de fichier du bureau, envoyez spip_loader.php dans le répertoire spip.

Une fois le transfert effectué, rendez vous à l'adresse : http://votre-login.lautre.net/spip/spip_loader.php

Si vous passez par le gestionnaire de fichier vérifiez de bien être dans le répertoire spip/ (1 sur l'image), puis cliquez sur parcourir (2 sur l'image), naviguer pour sélectionner spip_loader.php sur votre ordinateur, puis valider avec OK (3 sur l'image). N'oubliez pas de cliquer sur Envoyer (4 sur l'image).

http://tiiad.lautre.net/lautre/upload_spiploader.png

Cliquez enfin sur voir, tout à droite du fichier.

http://tiiad.lautre.net/lautre/display_spiploader.png

Vous voici désormais dans l'installateur de spip. Il doit vous vous dire

    Téléchargement de SPIP

    Bienvenue dans la procédure d'installation automatique de SPIP.

    Le système a vérifié les droits d'accès au répertoire courant. Il va lancer maintenant le téléchargement des données SPIP à l'intérieur de ce répertoire.

    Veuillez appuyer sur le bouton suivant pour continuer.

Cliquez donc sur Commencer l'installation. Spip se charge de récupérer tous les fichiers dont il a besoin depuis spip.net, il créé les répertoires et s'occupe de tout. L'opération prend quelques secondes.

La prochaine fenêtre vous demande de choisir la langue. Cliquez sur Suivant une fois la langue choisie.

Vient le renseignement SQL. On a vu plus haut vos identifiants. Pour le choix de type de base, c'est MySql?. La fenêtre renseignée doit ressembler à ça :

http://tiiad.lautre.net/lautre/spip_db.png

On valide avec Suivant. La page suivante doit arboré un bandeau vert avec La connexion a réussie, et nous propose de choisir notre base ou de la créer. Attention ! La base nous l'avons déjà créée avant, elle s'appelle votre-login_spip. On coche la puce correspondante, on laisse le reste par défaut, et on valide par Suivant.

http://tiiad.lautre.net/lautre/spip_db_choice.png

L'étape suivante nous demande de renseigner notre signature, c'est ce qui apparaîtra apposé aux articles. Notre adresse mail, elle servira à suivre la vie du site, à récupérer notre mot de passe, ... Notre login, qui nous servira à nous connecter à Spip; il peut et devrait être différent de celui qui vous sert à accéder à Lautre Net. Enfin le mot de passe, 2 fois (même remarque que pour le login). Cliquez sur Suivant.

La dernière fenêtre arbore toujours un bandeau vert et nous gratifie en disant que l'installation est terminée. Cliquez sur le bouton "Espace privé". Vous êtes amené sur la fenêtre de login de Spip. L'identifiant et le mot de passe sont ceux que vous venez juste de renseigner.

Pour la suite, je vous invites à aller visiter la documentation de Spip sur http://www.spip.net/rubrique91.html, et entre autre :

- http://www.spip.net/rubrique135.html pour les webmasters 
- http://www.spip.net/rubrique136.html pour les rédacteurs 

Votre site est accessible à l'adresse http://votre-login.lautre.net/test, et la partie privé de Spip dans http://votre-login.lautre.net/test/ecrire


**Le nom de domaine** 

Vous avez un nom de domaine (pour l'exemple monspip.net) et vous voulez configurer pour qu'il affiche votre Spip. Très simple.

Dans le menu de gauche du Bureau, sous Domaines cliquez sur Héberger un domaine.

Dans la page qui s'affiche, entrer à côté de www. votre nom : momspip.net.

Cochez la case Héberger le DNS sur le serveur (elle l'est pas défaut).

Cliquez maintenant sur Héberger ce nouveau domaine.

Dans la page suivante Cliquez ici pour continuer. Le domaine est rajouté. Dans le menu de gauche, dans le sous-menu Domaine

, cliquez sur monspip.net.

Vous arrivez dans la gestion de votre nom de domaine. En haut sur 3 lignes, les différents "domaines" liés à monspip.net. Cliquez sur le crayon à gauche de www.monspip.net.

http://tiiad.lautre.net/lautre/conf_ndd.png

Dans la fenêtre qui s'ouvre, cochez Géré en local, et mettez comme répertoire /spip (c'est le répertoire dans lequel on a installé Spip). Valider les changements

Dans quelques minutes, en allant sur http://monspip.net, vous arriverez directement dans votre Spip :)

Vous y aviez accès via http://votre-login.lautre.net/spip, vous y avez désormais aussi accès via http://monspip.net directement.

Happy hacking \o_ 