Title: 01. Gestion des comptes 
Date: 2009-03-10 08:25:20
Category: 09. Administration des comptes AlternC
Tags: old
Summary: Il appartient  à « admin AlternC » d'administrer les comptes hébergés sur le serveur. Cette rubrique présente des prérogatives et comemnt les exercer.
 . Après authentification, l'administrateur des comptes AlternC accède au bureau virtuel du compte « admin ».

L'utilisation des liens en bleu est la même que pour tout compte AlternC.
Nous nous intéresserons ici, exclusivement, aux liens de couleur rouge.


## Le compte admin AlternC

<img src="/img/menu_gestionnaire_demo.png" title="to complete" alt="menu_gestionnaire_demo.png" /> Après authentification, l'administrateur des comptes AlternC accède au bureau virtuel du compte « {admin} ».
 
L'utilisation des liens en bleu est la même que pour tout compte AlternC.
Nous nous intéresserons ici, exclusivement, aux liens de couleur rouge.

Il appartient  à « {admin AlternC} » d'administrer les comptes hébergés sur le serveur.
Les termes compte et membres sont utilisés. AlternC a été développé dans le cadre d'un projet libre, ses premiers utilisateurs furent des communautés associatives, ce qui explique le mot « membre ». 

L' « {admin AlternC} » peut créer un compte, lui attribuer des quotas (noms de domaine, comptes mails, listes de discussion, ...), lui conférer des droits d'administration, le bloquer, le supprimer, s'y connecter et donc consulter tous ses fichiers  ...

Le mot de passe du compte « {admin} » doit être un VRAI mot de passe (mélange de chiffres, de caractères spéciaux et de lettres minuscules et majuscules), c'est un compte sensible qui donne accès à tous les comptes hébergés sur le serveur.

Le menu du bureau virtuel est semblable à celui de l'utilisateur d'un compte à une rubrique près, la rubrique Administration, reproduire ci-dessous. 

<img src="/img/menu_gestionnaire_demo.png" title="to complete" alt="menu_gestionnaire_demo.png" />

## Liste des comptes

Un clic sur le lien « {Gérer les membres} » affiche la liste des comptes hébergés sur le serveur dans la partie droite du bureau.

<img src="/img/adm_mb_sans_expire.png" title="to complete" alt="adm_mb_sans_expire.png" />

Dans cette liste les comptes inscrits en rouge sont des comptes administrateur  ou administrateur  restreint.
_ Ce tableau comporte 10 colonnes :

  -  une case à cocher (pour supprimer un compte)
  -  le lien « {Modifier} » (modification des informations personnelles d'un compte)
  -  le lien « {Quotas} » (gestion des quotas d'un compte)
  -  le lien « {Connecter} » (connexion au compte, à n'utiliser qu'à la demande du propriétaire du compte !)
  -  le nom du compte (nom d'utilisateur)
  -  l'identité du propriétaire du compte qui fait lien vers son adresse mail 
  -  le type de compte (si plusieurs type de comptes sur le serveur)
  -  la dernière date de connexion au compte
  -  le nombre de tentatives erronées (dernier échac) depuis la dernière connexion correcte
  -  l'IP de la dernière machine qui s'est connectée au compte 

Nous constatons que le compte octo ne s'est jamais connecté à la date de la copie d'écran.

Voici, par exemple, la ligne concernant un compte victime d'une tentative de connexion avec un mot de passe erroné :
<img src="/img/menu_gestionnaire_demo.png" title="to complete" alt="menu_gestionnaire_demo.png" />

Le fait de connaitre la date et l'heure de connexion ainsi que l'IP de la machine concernée permet d'engager des recherches si les tentatives se multiplient.

C'est également depuis ce tableau que l'on peut créer un nouveau compte.
Lien bleu en haut du tableau : « {Créer un nouveau membre }»
supprimer un compte :

## Création d'un compte

La création d'un nouveau compte (nommé membre sur le serveur de démonstration)  est aussi aisée que la création d'un nouvel e-mail

  -  Clic sur le lien « {Créer un nouveau membre} »
  -  Renseignement du formulaire
  -  Validation depuis le bouton [Créer un nouveau membre]
<img src="/img/adm_mb_add1.png" title="to complete" alt="adm_mb_add1.png" />
  -  **Nom** : nom du compte (identifie le compte et sert à l'authentification pour la connexion au bureau virtuel)
  -  **Mot de passe initial** : ce mot de passe (à confirmer dans le champ suivant) pourra être changé (ou non) par le gestionnaire du compte si l'autorisation lui en est donnée (Peut-il changer son mot de passe ?)
  -  **Nom / Prénom** : l'identité du propriétaire du compte, ou l'usage du compte (ex : test)
  -  **Adresse Email** : adresse à laquelle seront envoyées les informations de mise à jour, indisponibilité, ... du serveur.
  -  **Type de compte** : laisser à priori sur default, nous y reviendrons

{Note : Le nom du propriétaire du compte n'est pas obligatoirement celui du gestionnaire du compte.}

## Modification d'un compte

Un clic sur le lien «Modifier» dans la liste des membres permet de changer chertaines informations du compte concerné.

<img src="/img/adm_mb_modif.png" title="to complete" alt="adm_mb_modif.png" />

L'utilisation en est simple, il suffit de modifier les données du formulaire.

Le fait de passer le champ «{ Compte Actif} » de oui vers non, verrouille l'accès au compte. Repasser sur oui, déverrouille.

Si la modification ne vise pas le changement de mot de passe il faut laisser les champs mot de passe non remplis. Le mot de passe initial sera gardé.

Type de compte concerne les quotas, nous en parlerons plus loin.

La périodicité de facturation n'est pas activée sur ce serveur. Il ne s'agit pas d'un serveur d'hébergeur commercial.

{Attention : le Lien « {Transformer ce compte en compte d'Administrateur }» donne, au gestionnaire du compte, le droit de créer lui-même des comptes. A manipuler donc avec précaution et après formation du gestionnaire.}

## Gestion des quotas d'un compte

<img src="/img/adm_mb_modif_quotas.png" title="to complete" alt="adm_mb_modif_quotas.png" /> Par défaut, des quotas sont définis en matière de comptes mails, noms de domaines, comptes FTP, ...). Nous verrons par la suite comment définir ces quotas par défaut.

Ici nous allons personnaliser les quotas attribués au compte « {demo} », pour cela nous avons cliqué sur le lien « {Quotas} » associé au compte « {demo} »

Les champs du formulaire permettent d'entrer les nouveaux quotas pour chaque élément. Une colonne indique les quotas utilisés  avant modification (ici, 2 comptes FTP étaient utilisés, soit  la totalité du quota pour ce service, ce pourquoi l'intitulé était en rouge.).

Cliquer sur le bouton [Modifier les quotas] pour enregistrer les modifications.

## Connexion à un compte depuis le compte « admin »

Avant de cliquer sur le lien « {Connecter} » associé à un compte, assurez-vous que le gestionnaire ou le propriétaire du compte vous en a donné le droit.

**Attention** : ne pas ouvrir ce lien dans un nouvel onglet (ou une nouvelle fenêtre) du navigateur. En effet, la connexion simultanée à plusieurs bureaux virtuels d'un même serveur est a proscrire, les informations risquant de se mélanger ... 

Le bureau virtuel du compte choisi s'affiche à la place de celui du compte « {admin} ».  Pour retourner au compte « {admin} » il sera nécessaire de se déconnecter du compte en cours puis de se reconnecter en s'identifiant ((raison de sécurité évidente).


## Quotas utilisateurs

Depuis le lien « {Quotas utilisateurs} », l'administrateur AlternC visualise l'utilisation de l'espace pour chaque compte, soit en Mo, soit en pourcentage d'occupation du serveur (chiffres ou graphiques).

<img src="/img/adm_quotas2pt.png" title="to complete" alt="adm_quotas2pt.png" />
