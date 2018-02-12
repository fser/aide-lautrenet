Title: 04. Configurer la liste 
Date: 2009-03-09 08:57:25
Category: 07. Gestion listes de discussion
Tags: old
Summary: Comment choisir entre toutes les options proposées par mailman celles qui vous conviennent. . 

## Abonner l'administrateur (ou gestionnaire) de la liste (2 étapes)

Attention, l'administrateur n'est pas automatiquement abonné à la liste qu'il gère. Nous allons donc l'abonner, ce n'est pas obligatoire mais préférable ici.

Dans le menu général cliquer sur le lien "{Gestion des abonnements}" (4ème ligne, 1ère colonne) puis sur "{Abonnements en nombre}" et modifier les valeurs comme suit :

| Abonner ces utilisateurs maintenant ou les inviter ?| Abonner|
| Envoyer un message de bienvenue aux nouveaux abonnés ? | OUI |
| Envoyer un avis de nouvel abonnement au propriétaire de la liste | OUI|

Puis inscrire dans le cadre  vide "{Entrer une adresse par ligne ci-dessous..}."
toto@alternc.org et soumettre les modifications.
_ Nous modifierons ces options par la suite pour la gestion des abonnés, en fonction du type de liste choisi.

Ensuite dans le menu "{Gestion des abonnements}", cliquer sur "{Liste des abonnements}".

Dans le cadre représenté ci-dessous, vous pouvez inscrire le nom de Toto dans la case concernée (ici Toto Administrateur).
_ Il est impératif de décocher la case "{mod}" (modéré) afin que l'administrateur puisse écrire.

<img src="/img/menu_gestionnaire_demo.png" title="to complete" alt="menu_gestionnaire_demo.png" />

Vérifiez les messages de bienvenue et d'avis d'abonnement reçus par l'administrateur.

Il est possible de permettre à l'administrateur, ou a toute autre personne, d'écrire à la liste sans être abonné. Nous détaillerons cette option par la suite.

ATTENTION avant de procéder à l'inscription des abonnés il est nécessaire

  -  d'avoir défini le type de liste comme indiqué dans l'introduction
  -  de configurer cette liste en fonction des points choisis. Les éléments fournis ci-dessous ne sont pas nécessairement suffisants, ou ne répondent pas parfaitement à vos objectifs. Mailman offre de très nombreuses options, notre objectif est uniquement de vous aider à sa prise en mains.

Il est possible de régler déjà un certain nombre d'options. 

Pour éviter de surcharger notre texte avec des copies d'écran de trop grande taille, nous vous proposons des tableaux reproduisant des lignes de l'interface administrateur. 
_ Une ligne titre, ajoutée par nos soins sur ce document permet de différencier les réponses selon le type de liste choisi.

## Rendre cette liste publique ou privée (deux étapes)

**1 - Dans le menu général cliquer sur le lien "{Options de confidentialité ...}"** (en haut 2ème colonne) et modifier les valeurs comme indiqué sur les tableaux ci-dessous.

||Abonnement en cours | Résumé ||
|**Type de liste** |	**Diffusion** |	**Discussion Privée** | **Discussion Publique**|
|Afficher cette liste lorqu'on demande les listes hébergées par cette machine ? | NON | NON |OUI|
|Quelles sont les étapes requises pour un abonnement ? |Nécessite une approbation | Nécessite une approbation | Confirmer|
|L'approbation du modérateur de la liste est nécessaire pour les demandes de résiliation ? (Non est recommandé)| NON
_ (ceci est fondamental au regard de la loi, chacun peut refuser d'être inscrit sur une liste de discussion ou de diffusion) |<|<|


|| Protection des abonnés | Résumé ||
|**Type de liste** |	**Diffusion** |	**Discussion Privée** | **Discussion Publique**|
|Qui peut voir la liste des abonnés ? | Uniquement l'administrateur | Abonnés de la liste
_ Même si une liste est publique, il vaut mieux éviter de rendre la liste des abonnés publique (spams)|<|
|Afficher les adresses des abonnés de façon à ce qu'elles n'apparaissent pas comme des adresses courriels ? | OUI
_ (ici cela à peu d'importance puisque la liste des abonnés n'est accéssible qu'au seul administrateur, mais c'est une bonne habitude à prendre !)|OUI|OUI|

**2 - Dans le menu général cliquer sur le lien "{Options d'archivage}"** (3ème ligne, 2ème colonne) et modifier les valeurs comme suit :

|**Type de liste** |	**Diffusion** |	**Discussion Privée** | **Discussion Publique**|
|Messages archivés ? | OUI|OUI|OUI ou NON|
|Le fichier source des archives est destiné à un archivage public ou privé ?| Privé|Privé|Public|
|Avec quelle périodicité de nouveaux volumes d'archives doivent-ils être crées ?| (choisir en fonction de vos convenances)|<|<|

ATTENTION : Ne jamais oublier de valider les modifications en cliquant  sur 
<img src="/img/menu_gestionnaire_demo.png" title="to complete" alt="menu_gestionnaire_demo.png" />

## Gérer l'envoi et la réception des messages

Dans le menu général cliquer sur le lien "{Options de confidentialité ...}" (en haut 2ème colonne) puis sur le lien "{Filtres expéditeurs}" et modifier les valeurs comme suit :

|| Filtres d'abonné | Résumé ||
|**Type de liste** |	**Diffusion** |	**Discussion Privée** | **Discussion Publique**|
|Les envois des nouveaux abonnés doivent être modérés par défaut ? | OUI| NON ou OUI|NON|
|Mesure à prendre lorsqu'un abonné sous modération envoie un message à la liste. | Rejeter| En attente|En attente|
|Texte à inclure dans les avis de rejet à envoyer aux abonnés sous modération ayant soumis un message à la liste|Exemple de texte ci-après| Ne rien inscrire ici un mail automatique est envoyé|<|

Exemple de texte à inscrire dans les avis de rejet pour les listes de diffusion :
<quote>{Ceci est un message automatique.
_ Votre envoi ne peut pas être transmis aux abonnés de cette liste de diffusion (et non de discussion)
_ Si vous souhaitez joindre l'administrateur de cette liste écrivez à toto@alternc.org}</quote>

|| Filtres de non-abonné (dernière ligne)|Résumé|
|**Type de liste** |	**Diffusion** |	**Discussion Privée** | **Discussion Publique**|
|Les messages des non-abonnés automatiquement ignorés doivent être transmis au modérateur de la liste ? |NON| | |


