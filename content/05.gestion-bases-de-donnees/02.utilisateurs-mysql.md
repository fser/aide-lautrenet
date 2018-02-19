Title: 02. Utilisateurs MySQL 
Date: 2009-03-11 08:32:40
Category: 05. Gestion bases de données
Tags: old
Summary: Créer plusieurs utilisateurs MySQL permet de donner la main à un créateur de site web (par exemple) sans lui donner accès au bureau AlternC. . Un compte FTP et un compte Utilisateur AlternC, vous voici parés pour confier la réalisation d'un site web, par exemple, sans donner accès à votre comte AlternC (messagerie, statistiques, listes de diffusion... resteront confidentielles). 

## Créer un utilisateur MySQL

Un clic sur le lien «{Utilisateur MySQL}» sans le menu de gauche du bureau vrituel, affichera un seul lien : «{Créer un nouvel utilisatguer MySQL}».
_ Cliquez sur ce lien.
<img src="/img/ndd.jpg" title="to complete" alt="ndd.jpg" />

Renseignez le formulaire pour l'utilisateur «toto»

  -  son nom d'utilisateur sera toujours précédé du nom du compte suivi d'un souligné (tiret du 8). {Attention, le nom d'utilisateur est limité à 16 caractères.}
  -  Bien évidemment son mot de passe sera différent de celui que vous avez entré lors de la création de la base de données principale.
Validez en cliquant sur le bouton [Créer ce nouvel utilisateur]

Il apparaît maintenant dans la liste des utilisateurs MySQL
<img src="/img/bdd9user.png" title="to complete" alt="bdd9user.png" />

## Donner des droits à un utilisateur MySQL

Pour le moment, cet utilisateur n'a aucun droit sur aucune base, nous allons lui en donner, par exemple sur la base {demo_spip}. Pour cela cliquer sur le lien «{Droits}», à droite du nom d'utilisateur.
<img src="/img/ndd.jpg" title="to complete" alt="ndd.jpg" />

Choisissez les droits que vous souhaitez lui octroyer en cochant les cases concernées, puis validez avec le bouton [Appliquer]

Toto aura donc des droits sur la base demo_spip, base à laquelle il pourra accéder avec le logiciel PHPMyadmin, installé sur les plateformes AlternC et accéssible depuis l'adresse web *https://nomduserveur.tld/admin/sql/index.php*.
Pour de plus amples informations [voir PHPMyAdmin](/03-phpmyadmin.html).

Vous pouvez, depuis la liste des utilisateur MySQL, supprimer un utilisateur : cochez la case qui précède son nom et cliquez sur le bouton de validation (une confirmation sera demandée).

