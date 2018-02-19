Title: 04. Comment télécharger ma base de données SQL ?  
Date: 2010-11-13 18:12:24
Category: 11. Sur les bases de données MySQL
Tags: old
Summary:  . 

Comment télécharger ma base de données SQL via SFTP ? 

Il est parfois impossible de télécharger une base de totalité, totalement voire partiellement, en utilisant l'interface d'exportation de PHPMyAdmin, car la taille de votre base peut être trop importante et le serveur vous renvoie alors un time out. Pour contourner cet obstacle, vous pouvez vous connecter via sftp à votre compte et télécharger directement sur votre ordinateur les fichiers qui vous intéressent. C'est cette méthodologie que nous allons aborder ici.

Pour vous connecter en sftp, il faut faire la demande d'un machine virtuelle tel que décrit ici[[**Comment se connecter à une machine virtuelle ?** 

Dans le bureau altern, colonne de gauche, cliquez sur « machines virtuelles (SSH) », puis dans la page ouverte, cliquez sur « demander un accès shell ». Une machine virtuelle est alors immédiatement à disposition et pour 4H. La page qui s'affiche vous donne votre nom d'utilisateur, votre mot de passe, le nom d'hôte de la machine et le port pour s'y connecter.
Vous pouvez maintenant accéder à l'ensemble de votre compte et tout sauvegarder, ça ne fait jamais de mal (Filezilla fera ça très bien).

Mac : utilisez l'application Terminal située dans votre répertoire Applications/Utilitaires

Linux : les distributions un peu récentes permettent de se connecter à cette machine virtuelle très facilement via le protocole sécurisé SSH. Si OpenSSH n'est pas installé par défaut, installez-le (vous le trouverez probablement dans vos sources.)

Puis dans une console, taper :


<quote>$ ssh utilisateur@hôte</quote>


Ca va alors vous demander votre mot de passe, et vous voilà connecté.

Windows : vous pouvez utiliser le logiciel Putty, pour lequel vous trouverez les tutoriels appropriés facilement.

Une fois connecté, vous êtes dans la machine en question, en mode console de linux, positionné dans votre répertoire /home où se trouve votre site. Tapez :


<quote>$ cd ..</quote>


pour remonter à la racine, puis :


<quote>$ ls</quote>


pour voir tous les répertoires disponibles. Vous pouvez voir que cette machine ressemble beaucoup à la racine d'un système linux. Les adeptes du libre (et de la console) ne seront donc pas trop perdus.
Vous n'avez a priori de droits d'écriture que sur le répertoire /home. Mais attention, vous êtes quand même connectés d'une façon dangereuse qui pourrait en cas de fausse manip affecter définitivement votre site.
Quand vous avez fini ce que vous avez à faire dans cette machine virtuelle, n'oubliez pas de la refermer via le bureau altern, par le lien sur la même page que celle par laquelle vous l'avez ouverte.]]


    Dans le bureau altern, colonne de gauche, cliquez sur « machines virtuelles (SSH) », puis dans la page ouverte, cliquez sur « demander un accès shell ». Une machine virtuelle est alors immédiatement à disposition et pour 4H. La page qui s'affiche vous donne votre nom d'utilisateur, votre mot de passe, le nom d'hôte de la machine et le port pour s'y connecter.

Ceci fait, choisissez le logiciel de votre choix pour accéder à votre machine virtuelle (logiciel FTP supportant le protocole SFTP, ou ligne de commande). Les adeptes de la ligne de commande ne trouveront pas ici d'explication du fonctionnement des principales commandes utiles à ces manipulations, qui sont pour mémoire cd, ls, wget.

Renseignez votre logiciel avec les informations obtenues précédemment. A ce stade vous devriez donc avoir accès à votre répertoire /home qui liste tous les fichiers déposés sur votre compte et accessible à l'adresse http://votrenomdecompte.lautre.net
Pour accéder à vos sauvegardes, remontez à la racine de votre compte. Il s'agit de revenir un répertoire en amont, les modalités pratiques d'accès à cette fonctionnalité dépendent des logiciels utilisés, mais vous saurez que vous aurez atteint votre objectif lorsque vous verrez apparaître le listing de fichier suivant :

<img src="/img/ndd_zonedns.jpg" title="to complete" alt="ndd_zonedns.jpg" />

Naviguez alors jusque dans votre répertoire **backupsql** en double cliquant sur le dossier et vous aurez accès aux dernières 7 sauvegardes quotidiennes et aux 5 dernières sauvegardes mensuelles. Au jour où j'écris ce tutoriel, les informations sont les suivantes :


<img src="/img/racine.png" title="to complete" alt="racine.png" />
