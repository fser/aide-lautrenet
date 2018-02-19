Title: 02. Se connecter en SFTP 
Date: 2009-09-07 12:48:38
Category: 10. Accès sécurisé aux données (SSH et SFTP)
Tags: old
Summary: Les transferts de fichiers par SFTP est bien plus sûre que celle par FTP, car vos identifiants de connexion et vos données sont totalement chiffrés. . Les transferts de fichiers par SFTP est bien plus sûre que celle par FTP, car vos identifiants de connexion et vos données sont totalement chiffrés. À noter qu'une autre possibilité est d'utiliser une connexion FTP avec SSL/TLS : cette configuration, plus simple, est indiquée sur [la page de configuration des clients FTP->8].

Pour pouvoir accéder à vos données en SFTP, il vous faut d'abord avoir [activé l'accès sécurisé à votre compte->34], et noté le nom d'hôte qui vous a été attribué à cette étape.

Il vous faut ensuite utiliser un client FTP permettant l'utilisation du protocole SFTP. Nous utiliserons ici le logiciel libre et gratuit Filezilla.

Dans Filezilla, ouvrez le gestionnaire de site puis cliquez sur le bouton {Nouveau site}. Paramétrez le site de la manière suivante :

<img src="/img/ndd_4.jpg" title="to complete" alt="ndd_4.jpg" />

  -  le champ **Hôte** doit contenir le nom d'hôte obtenu lors de l'activation de votre accès sécurisé (quelque chose qui ressemble à slave1.vds.lautre.net).
  -  le champ **Identifiant** est votre identifiant de connexion au bureau virtuel de l'Autre Net.
  -  le champ **Mot de passe** est votre mot de passe de connexion au bureau virtuel de l'Autre Net.

Puis cliquez sur {Connexion}. Il se peut que Filezilla affiche un message vous demandant d'accepter de faire confiance dans la clé publique du serveur : vous pouvez accepter sans souci.

Vous devriez alors vous retrouver dans un répertoire /home dans lequel vous allez retrouver l'ensemble des fichiers et répertoires de votre compte. Vous pouvez dès lors naviguer et transférer des fichiers comme avec un transfert FTP classique.
