Title: 01. Créer une base de données  
Date: 2009-03-10 17:03:21
Category: 05. Gestion bases de données
Tags: old
Summary: Contrairement à la création automatique d'un compte FTP à la création d'un compte Alternc, aucune base de données n'a été créée automatiquement, en effet, tous les outils web n'utilisent pas des bases de données. . Contrairement à la création automatique d'un compte FTP à la création d'un compte Alternc, aucune base de données n'a été créée automatiquemetn, en effet, tous les outils web n'utilisent pas des bases de données.
_ Si le gestionnaire du compte AlternC a besoin de ces bases il peut facilement les créer. Leur nombre dépend du quota qui a été attribué à la création du compte AlternC.

## Créer la base de données principale

<img src="/img/bdd.png" title="to complete" alt="bdd.png" /> Dans le menu de gauche du bureau virtuel, la rubrique MySQL vous indique qu'il n'existe, sur ce compte, aucune base de données. Le quota autorisé est de 10 (chiffres entre parenthèses).

Cliquez sur le premier lien «{Utilisateurs MYSQL}» 
<img src="/img/bdd1.png" title="to complete" alt="bdd1.png" />
Entrez un mot de passe et  validez votre choix en cliquant sur le bouton [Créer ma base de données principale]
_ Le même formulaire se serait affiché si vous aviez cliqué sur le second lien «{Bases de données}».

Toutefois, maintenant que cette base principale est créée, les informations affichées en cliquant sur le lien «{Bases de données}» sont les suivantes :
<img src="/img/ndd.jpg" title="to complete" alt="ndd.jpg" />

## Créer une nouvelle base de données

Si l'administrateur des comptes AlternC vous donne la possibilité de créer plusieurs bases de données sur votre compte, le mot de passe MySQL sera le même pour toute les bases. Ceci, sauf si vous avez la possibilité de créer des utilisateurs MySQL [voir Utilisateurs MySQL](/02-utilisateurs-mysql.html).

Pour créer une nouvelle base, dans le menu du bureau, cliquez sur le lien «{Bases de données}» sous la rubrique MySQL. puis choisissez le lien «{Création d'une base de données}», sous la liste des bases qui s'affiche dans la partie droite du bureau.

<img src="/img/ndd.jpg" title="to complete" alt="ndd.jpg" />
Entrez un nom dans le champ. Le nom de la nouvelle base sera un nom composé de deux mots reliés par un tiret souligné (underscore). Ici, elle se nommera demo_spip (en imaginant qu'elle sera utilisée pour installer un SPIP). 
_ Valider en cliquant sur le bouton [Créer cette nouvelle base].

<img src="/img/ndd.jpg" title="to complete" alt="ndd.jpg" />
Elle apparaît maintenant dans la liste des bases de données.
_ Attention, si vous cochez la case à gauche du nom de la liste et que vous cliquiez sur le bouton [Effacer les bases cochées] ... la base sera effacée (pour éviter toute mauvais manipulation, une confirmation sera demandée)

