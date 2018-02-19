Title: 04. Import de fichiers et FTP 
Date: 2009-03-08 17:38:59
Category: 04. Gestion d'un compte
Tags: old
Summary: Comment importer des fichiers, voire les modifier, de manière aisée depuis le bureau virtuel d'AlternC. . AlternC facilite l'import de fichiers directement depuis le bureau virtuel ou, plus classiquement, par FTP.

## Importer un fichier depuis le gestionnaire de fichiers

Nous allons agrémenter la page toto avec une image. Cette image se trouve sur le disque dur de notre ordinateur. Pour la transférer nous  allons utiliser la zone de téléchargement (upload) du gestionnaire de fichier.

Ouvrir le répertoire « toto » dans le gestionnaire de fichiers.
_ Cliquer sur le bouton [Parcourir] et choisir l'image sur le disque dur de l'ordinateur.
_ Cliquer sur [Envoyer].

<img src="/img/ndd_sd_add6.jpg" title="to complete" alt="ndd_sd_add6.jpg" />
L'image apparaît dans la liste des fichiers du répertoire « {toto} ».
Ce petit outil FTP (transfert de fichiers) intégré au bureau AlternC est très pratique pour charger un fichier. 

## Renommer un fichier

<img src="/img/ndd_sd_add7.jpg" title="to complete" alt="ndd_sd_add7.jpg" /> Le nom de l'image est un peu long, nous allons renommer le fichier image.
_ Cliquer sur la case qui précède le nom de l'image pour la cocher.
_ Puis cliquer sur le bouton [Renommer]

Dans la zone de texte modifier le nom (Attention, bien conserver l'extension (ici « .png »).

<img src="/img/ndd_sd_add8.jpg" title="to complete" alt="ndd_sd_add8.jpg" /> Cliquer sur [Renommer]

<img src="/img/ndd_sd_add9.jpg" title="to complete" alt="ndd_sd_add9.jpg" />
Le nom du fichier image a été modifié dans la liste des fichiers.

Pour l'intégrer à la page « toto » nous allons simplement éditer et modifier le fichier « index.html » du répertoire « toto ».

  - Editer le fichier « index.html »
  - Modifier le code, ajouter : <img src="pingouin.png" alt="pingouin" title="pingouin" />
  - Cliquer sur [Enregistrer et Fermer]

<img src="/img/ndd_sd_add91.jpg" title="to complete" alt="ndd_sd_add91.jpg" />
Pour visualiser la page modifiée cliquer sur le lien « Voir » qui suit le fichier «{ index.html }».

<img src="/img/ndd_sd_add92.jpg" title="to complete" alt="ndd_sd_add92.jpg" />
Comme l'outil FTP,  l'outil de création, édition, enregistrement, visualisation de fichier est très utile pour corriger une faute d'orthographe, une date... dans un fichier.

Toutefois pour mettre à jour un site (charger plusieurs fichiers) il vaut mieux utiliser un client FTP traditionnel.
Nous allons justement aborder ce point.

## Compléments sur les fichiers et répertoires

Ouvrir le gestionnaire de fichier à la racine du compte (s'il est ouvert sur un des répertoires « {toto} » ou « {site} », cliquer sur le lien « {aideac}» en haut à droite du gestionnaire de fichiers).

Au-dessous de la liste des fichiers se trouve 4 liens bleus que nous allons étudier.

<img src="/img/gest-ftp1.jpg" title="to complete" alt="gest-ftp1.jpg" />

## Créer un compte FTP rapidement

Le premier lien concerne le compte FTP. Cliquer sur le lien « Cliquez ici pour le modifier »
<img src="/img/gest-ftp2.jpg" title="to complete" alt="gest-ftp2.jpg" />

A la création d'un compte AlternC, un compte FTP est automatiquement créé à la racine du compte AlternC, avec les mêmes nom et mot de passe que celui-ci. il donne accès, en lecture et écriture, à tous les répertoires, sous-répertoires et fichiers du compte AlternC.

Son nom comporte obligatoirement soit le nom du compte AlternC, soit le nom de domaine installé sur ce compte, il peut être complété par un autre nom (caractères non accentués) à inscrire dans la zone texte qui suit le « _ ».

Modifier le mot de passe peut être utile pour donner accès aux fichiers du compte par un client FTP classique, sans donner accès à la gestion du compte (noms de domaines, adresses mail ...).
_ Il peut donner accès aux fichiers et sous-répertoires d'un répertoire spécifique et non pas à l'ensemble des fichiers et répertoires.
Pour cela, choisir un répertoire en cliquant sur le bouton <img src="/img/menu_gestionnaire.png" title="to complete" alt="menu_gestionnaire.png" />.

Puis valider le changement en cliquant sur le bouton [Modifier le compte FTP].

Il n'y a pas de compte FTP pour les répertoires « {toto} » et « {site} ». Vérifier en ouvrant le gestionnaire de fichiers sur ces répertoires. Ici, le lien, propose, « Cliquer ici pour créer un compte ftp dans ce répertoire ».

Un clic sur ce lien ouvre le formulaire de création d'un compte ftp pour ce répertoire 
<img src="/img/gest-ftp2.jpg" title="to complete" alt="gest-ftp2.jpg" />

## Créer, gérer et configurer un compte FTP

Une autre méthode, la plus classique en fait,  pour créer un compte FTP est de cliquer dans le menu de gauche du bureau virtuel sur le lien « Comptes FTP ». 

<img src="/img/ftp3.jpg" title="to complete" alt="ftp3.jpg" /> Cette méthode offre les mêmes possibilités que l'entrée par le lien du gestionnaire de fichiers et affiche la liste de tous les comptes FTP.

Pour chaque compte ftp, le nom du compte et le répertoire concerné (rappel : / signifie la racine du compte)  sont précédés de l'icône « crayon » (accès à la modification du compte) et d'une case à cocher (suppression du compte validée par un clic sur le bouton  [Supprimer les comptes cochés].

Il est possible de créer plusieurs comptes FTP pour un même répertoire.

## Configurer son logiciel FTP


Vous pouvez utiliser un de ces comptes FTP immédiatement : entrez les paramètres suivant dans votre client FTP favori (par exemple Filezilla) :

  -  Hôte : ftp.lautre.net
  -  Utilisateur : votre nom de compte ftp (le nom du compte alternc (ici « aideac » ou « aideac_site », selon que vous voulez accéder à l'ensemble des répertoires ou seulement au répertoire « site »)
  -  Mot de passe : le mot de passe que vous avez entré (à ne pas oublier donc !). Si vous oubliez votre mot de passe, vous pouvez le modifier en allant dans le bureau AlternC. En effet, vous ne retrouverez pas votre mot de passe car il est stocké chiffré sur le serveur. Vous pourrez seulement le modifier.

<img src="/img/filezilla.png" title="to complete" alt="filezilla.png" />

**Attention,** avec la configuration ci-dessus toutes les données transférées par FTP, y compris votre identifiant et votre mot de passe, sont transmises "en clair", et sont donc lisibles librement par quiconque "écouterait" quelque part le long de la connexion entre votre ordinateur et le serveur FTP. Il est donc **vivement** conseillé, pour des raisons de sécurité, de mettre en place une connexion sécurisée, où vos identifiant, mot de passe et données sont chiffrées et donc illisibles par un tiers.

Certains logiciels FTP (comme {lftp} en ligne de commande) chiffreront automatiquement votre connexion. Si vous utilisez Filezilla, il vous faut créer un nouveau site dans votre gestionnaire de sites, en spécifiant dans le champ {Type de serveur} la valeur {FTPES - FTP plus explicite (TLS/SSL)} :

<img src="/img/ndd_ssd.jpg" title="to complete" alt="ndd_ssd.jpg" />

À la première connexion Filezilla vous demandera si vous faites confiance au certificat présenté par le serveur. Si vous acceptez, votre connexion sera ensuite chiffrée et sécurisée.

## Récupérer des fichiers compressés

Le troisième lien, au bas du gestionnaire de fichiers, est : « Télécharger ce répertoire dans un fichier compressé (tgz (Linux)) » offre au gestionnaire du compte AlternC la possibilité de télécharger (download) l'ensemble des fichiers d'un répertoire compressés automatiquement.

Pour effectuer cette action il suffit de cliquer sur le lien « Télécharger » et d'indiquer dans la fenêtre de téléchargement qui s'ouvre le répertoire du disque dur dans lequel il doit être stocké.

Attention la compression se fait ici au format tgz qui est un format reconnu le plus souvent par les systèmes Linux, mais le format peut être modifié dans la configuration du gestionnaire de fichier, comme nous l'expliquons dans l'article sur la [configuration du gestionnaire de fichiers->art10]

