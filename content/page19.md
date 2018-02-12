Title: 02. Créer une liste 
Date: 2009-03-09 08:19:39
Category: 07. Gestion listes de discussion
Tags: old
Summary: Il revient au gestionnaire d'un compte AlternC de créer les listes de diffusion/discussion.
  . Le nombre de listes pour un compte AlternC est déterminé par l'administrateur.


## Mise en place de la liste

Cette étape est la même quelle que soit le type de liste à créer.

<img src="/img/lm.png" title="to complete" alt="lm.png" /> Depuis Le bureau virtuel, dans le menu de gauche, cliquer sur le lien "Listes de discussion".

Sur ce compte, aucune liste de discussion n'existe.
L'information s'affiche dans la partie droite du bureau virtuel.
_ Pour créer une liste cliquer sur le lien "Créer une nouvelle liste".


<img src="/img/lm1.png" title="to complete" alt="lm1.png" />
Choisir un nom de liste et, si plusieurs noms de domaine sont installés sur le compte AlternC, préciser celui auquel la liste est rattachée (utiliser pour cela le menu déroulant  avec la flèche noire).

Attention, Mailman n'accepte pas que deux listes portent le même nom sur un même serveur tous comptes lautre.net confondus. 
_ Si le nom choisi est déja utilisé, un message d'erreur s'affiche. 

Exemple si nous avions choisi "tototo" :
<img src="/img/lm2.png" title="to complete" alt="lm2.png" />
Nous aurions ce message d'erreur :
<img src="/img/lm2err.png" title="to complete" alt="lm2err.png" />

Mais rassurez-vous, si vous tenez particulièrement à votre nom de liste, [une solution existe->42].

Pour les exemples suivants nous utiliserons les données suivantes (attention, cette liste créée pour la réalisation de cette aide sera détruite par la suite).

  -  Nom de la liste :  info
  -  Adresse de la liste : info@aide-alternc.org

<img src="/img/lm7.png" title="to complete" alt="lm7.png" />

Le propriétaire de la liste doit disposer d'une adresse électronique valide.
Le mot de passe doit être choisi avec soin et mémorisé (il n'est pas possible de le retrouver car, par souci de confidentialité, il est crypté MD5 sur le serveur).

Lorsque la liste est créée le tableau ci-dessous s'affiche dans la partie droite du bureau virtuel AlternC et précise que la création a été effectuée.
<img src="/img/lm8.png" title="to complete" alt="lm8.png" />

Depuis ce tableau il est possible

  -  de supprimer la liste (cocher la case Supprimer et cliquer sur le lien "Effacer les listes cochées"), une confirmation sera demandée.
  -  d'accéder à la page publique de la liste (qui sera configurée par la suite),
  -  d'accéder à l'administration de la liste (pour fixer ou modifier sa configuration, authentification nécessaire),
  -  de visualiser et gérer les éventuels messages en attente (authentification nécessaire),
  -  d'afficher la liste des abonnés (au format texte).

Toute liste doit être configurée avec soin en fonction d'objectifs bien définis. 
Nous allons étudier plusieurs cas dans les chapitres suivants.
Bien évidemment les possibilités offertes par Mailman étant très nombreuses, nous choisirons trois cas classiques : Liste de diffusion, Liste de discussion privée, Liste de discussion publique.

## Les 3 types de listes

Nous proposons, dans ce document, la configuration de trois types de liste. 
Il ne s'agit que de suggestions, l'objectif étant la prise en main des focntions de base de l'interface d'administration des listes Mailman.
_ Bien évidemment, ces options peuvent être adaptées à vos besoins propres.

**Une liste de diffusion** est destinée à envoyer des informations et non à échanger des informations. C'est à dire qu'une ou plusieurs personnes peuvent poster des messages pour des abonnés qui, eux, ne peuvent pas écrire à cette liste.

{Objectifs} :

  -  Cette liste est privée, fermée à toute inscription et envois exterieurs.
  -  Elle émet des informations strictements réservées à un groupe d'abonnés.
  -  Les abonnés ne sont pas autorisés à répondre ou à communiquer via cette liste.
  -  Le gestionnaire de cette liste, dans notre exemple toto@demo2.eitic.net (mais bien évidemment pour la formation choisissez une adresse qui vous est propre) est le seul à pouvoir poster sur cette liste.
  -  Aucun message en attente ne doit encombrer inutilement l'hébergeur, aucun pied de message ne doit être visible.


**Une liste de discussion privée** est destinée à l'échange d'informations entre abonnés de cette liste.

{Objectifs} :

  -  Cette liste est privée, fermée à toute inscription et envois exterieurs.
  -  L'échange d'informations est srictements réservé à un groupe d'abonnés.
  -  Les abonnés communiquent via cette liste.
  -  Le gestionnaire de cette liste, dans notre exemple toto@demo2.eitic.net (mais bien évidemment pour la formation choisissez une adresse qui vous est propre) valide les inscriptions et peut modérer tel ou tel abonné.
  -  Tout abonné peut consulter la liste des abonnés, les archives, changer son mot de passe et modifier la manière dont il reçoit les messages..


**Une liste de discussion publique** est destinée à l'échange d'informations entre abonnés de cette liste. Les différences essentielles avec la liste de discussion privée sont l'accès public à la liste, l'inscription ouverte à tous, les archives publiques.

{Objectifs} :

  -  Cette liste est publique, ouverte à toute inscription.
  -  Les abonnés communiquent via cette liste.
  -  Le gestionnaire de cette liste, dans notre exemple toto@demo2.eitic.net (mais bien évidemment pour la formation choisissez une adresse qui vous est propre) est informé des inscriptions/désinscriptions. Il peut modérer tel ou tel abonné.
  -  Tout abonné peut consulter la liste des abonnés, les archives, changer son mot de passe et modifier la manière dont il reçoit les messages..
  -  Les archives sont publiques et consultables par tous

Nous allons, au préalable décrire les manipulations communes à tout type de liste.

## Accéder à l'interface d'administration de la liste

Pour accéder à l'interface d'administration de la liste deux possibilités :

  - utiliser le lien "Administration" dans le tableau (le mieux est de faire un clic droit avec la souris et d'ouvir la fenêtre dans un nouvel onglet sous Mozilla ou Firefox)
  - inscrire l'URL ci-dessous dans la fenêtre d'un navigateur 
https://listes.lautre.net/cgi-bin/mailman/admin/NomDeLaListe
_ Ici NomDeLaListe doit être remplacé par {info}
_ Attention, ne pas oublier le "s" de "https" qui vous garantit une connexion sécurisée et donc le passage des données sur le réseau dans un tunnel crypté.

<img src="/img/lm9.png" title="to complete" alt="lm9.png" />

Au premier lancement le langage par default est "English"
_ Il faudra donc mettre "Français" dans notre cas. Ce que nous allons faire dès l'entrée dans l'interface d'administration.

Il est nécessaire de s'authentifier en inscrivant le mot de passe dans la case blanche.
_ Attention, toujours dans un souci de confidentialité, le mot de passe ne s'inscrira pas en clair sur l'écran mais sous forme d'étoiles (***).
_ Cliquer sur "Let me in ..." (que nous pourrions traduire par "connectez-moi").

La fenêtre qui s'ouvre est trop grande pour être reproduite ici, ci-dessous nous ne présentons que le menu général.

<img src="/img/lm91.png" title="to complete" alt="lm91.png" />

## Choix de la langue

La configuration du langage par défaut utilisé par la liste se fait en deux étapes.

**1 - Ajouter la langue française au menu de choix de langages**

Cliquer sur le lien "Language options" dans la colonne de droite du menu général.
_ Dans un premier temps il ne sert à rien d'utiliser le menu déroulant de droite qui offre, pour le moment, un unique choix : "English (USA)".
<img src="/img/lm93.png" title="to complete" alt="lm93.png" />

<img src="/img/lm94.png" title="to complete" alt="lm94.png" />Il est nécessaire d'ajouter le langage choisi.
Pour cela, ici,  cocher la case "French". Puis de valider le choix, tout au bas de la fenêtre en cliquant sur le bouton <img98>
_ Si vous décochez « English » toutes les listes associées au nom de domaine « aide-alternc.org » seront par défaut en français.

**2 - Configurer la liste pour la langue française**

La validation de la première étape a pour effet l'affichage de la même page, toujours en anglais.

<img src="/img/lm96.png" title="to complete" alt="lm96.png" />  Toutefois, maintenant, il est possible de sélectionner "French" dans le menu déroulant.
_ Après sélection, ne pas oublier de valider en cliquant sur le bouton <img98>.
 
La même page s'affiche à nouveau, cette fois en français.
_ Cette manipulation est la même quelle que soit le type de liste choisi.