Title: 01. Créer un jeu de statistiques 
Date: 2009-03-10 17:01:48
Category: 08. Gestion des statistiques
Tags: old
Summary: AWSTATS permet un affichage mois par mois, des statistiques concernant les page visitées du site, ainsi que la configuration des clients qui s'y sont connectés en donnant un relevé des navigateurs et système d'exploitation utilisés par les clients.
 . Il est nécessaire de créer un ou plusieurs couples « nom d'utilisateur/mot de passe » qui serviront à protéger la confidentialité des statistiques. Pour cette documentation nous utiliserons un compte de tests « {documentation} ».


## Menu Statistiques Web

Pour accéder à la création de jeux de statistiques, cliquer dans le menu du bureau virtuel sur 

<img src="/img/ndd.jpg" title="to complete" alt="ndd.jpg" />

Un clic sur le lien du menu « Statistiques Web » affiche, dans la partie droite du bureau virtuel deux liens et une information : actuellement il n'existe aucun jeu de statistiques.
<img src="/img/aw_zero.png" title="to complete" alt="aw_zero.png" />

Nous allons en créer

## Créer des utilisateurs

Pour ajouter un premier utilisateur sélectionner « **Gérer les utilisateurs autorisés** ».
<img src="/img/aw1_cerauser1.png" title="to complete" alt="aw1_cerauser1.png" />

Le champ Nom comporte obligatoirement, soit le nom du compte, soit un nom de domaine installé sur ce compte (ici documentation), utiliser le menu déroulant accéssible depuis la flèche noire à droite du champ nom..  Il est possible d'ajouter à sa suite un autre mot (non accentué). Ceci permet de créer plusieurs utilisateurs.
_ Choisir un mot de passe ou laisser vide si les statistiques sont publiques.
_ Valider en cliquant sur le bouton [Créer cet utilisateur].

Après l'ajout de l'utilisateur, la liste des utilisateurs autorisés mentionnera l'utilisateur créé (ici documentation).

Faire de même pour créer un second utilisateur 

<img src="/img/aw1_cerauser2.png" title="to complete" alt="aw1_cerauser2.png" />

## Créer un jeu de statistiques

La création du jeu de statistiques se fait également depuis le lien du menu « {Statistiques web} » puis choisir le lien «{ Créer un jeu de statistiques} ».

<img src="/img/ndd_0.jpg" title="to complete" alt="ndd_0.jpg" />

Le formulaire de création du jeu de statistiques propose le choix entre les domaines ou sous-domaines installés sur ce compte. 
_ Il faut désigner au moins un utilisateur qui aura le droit d'accéder à ces statistiques en cochant la case précédant le nom de l'utilisateur (ici un seul)
_ Le jeu de statistiques est créé, il figure dans la liste des jeux de statistiques.
_ À tout moment il est possible de le modifier ou de le supprimer.

<img src="/img/aw3_liststat.png" title="to complete" alt="aw3_liststat.png" />

À tout moment il est possible de le modifier ou de le supprimer (clic sur l'icône crayon ou case à cocher).

Un clic sur le lien « Voir » à la suite du nom du jeu de statistiques ouvre une page sur laquelle tous les chiffres sont à zéro, c'est normal. 
_ Avant de visualiser les statistiques, il faut attendre 48 heures voire quelques jours pour que les visites réalisées par les internautes soient comptabilisées. 
_ En effet, AWSTATS parcourt chaque nuit les fichiers journaux du serveur web apache pour mettre en forme et stocker les statistiques de l'avant-veille.
_ Nous utiliserons donc des tableaux fictifs pour la description des fonctionnalités de AWSTATS.


## Visualiser les stats sans passer par le bureau

On crée un ou des utilisateurs avec nom d'utilisateur et mot de passe afin de leur permettre une consultation des statistiques sans avoir l'accès au bureau virtuel.

Il suffit de donner l'url, leur nom d'utilisateur et mot de passe à ces utilisateurs.
_ Pour aller vite, cliquer sur "Voir" depuis le bureau en spécifiant affichage
dans un nouvel onglet et recopier l'url...

C'est une url de type :
_ <HTML>https://panel.lautre.net/cgi-bin/awstats.pl?config=www.mondomaine.tld</HTML>

où www.mondomaine.tld = le domaine ou le sous-domaine sur lequel ont été créées les stats
_ dans l'exemple de l'aide
_ <HTML>http://aide.lautre.net/Creer-un-jeu-de-statistiques</HTML>
_ ce sera www.vandoeuvre.octopuce.fr (copie d'écran 'Créer un jeu de
statistiques")

