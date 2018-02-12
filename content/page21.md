Title: 05. Gérer les abonnements 
Date: 2009-03-09 10:09:06
Category: 07. Gestion listes de discussion
Tags: old
Summary: Comment configurer au mieux de vos besoins les options concernant les abonnements. . 

## Gérer les abonnés

Dans le menu général cliquer sur le lien "{Options Générales}" (en haut 1ère colonne) et modifier les valeurs comme suit :

|| Réglages de liste générique (dernière ligne) | Résumé ||
|**Type de liste** |	**Diffusion** |	**Discussion Privée** | **Discussion Publique**|
|Cacher l'expéditeur du message, en le remplaçant par l'adresse de la liste (supprimer les champs From, Sender et Reply-To)| OUI|NON|NON|

|| Altération d'en-tête Répondre-à:| Résumé ||
|**Type de liste** |	**Diffusion** |	**Discussion Privée** | **Discussion Publique**|
|Destination des réponses aux messages adressés à la liste ? Expéditeur est fortement recommandé pour la plupart des listes de diffusion.| |Cette liste|Expéditeur ou Cette liste|

|| Avis| Résumé ||
|**Type de liste** |	**Diffusion** |	**Discussion Privée** | **Discussion Publique**|
|Envoyer les rappels mensuels de mot de passe ?| NON| OUI| OUI|
|Envoyer un message de bienvenue aux nouveaux abonnés ?| NON| OUI| OUI|
|Envoyer un message d'adieu lorsque les membres résilient leur abonnement ?| NON| OUI| OUI|
|L'administrateur doit être informé des abonnements et des résiliations ? | OUI|OUI|OUI|
|Envoyer un courriel aux expéditeurs lorsque leurs messages sont mis en attente pour approbation ?| NON|OUI|OUI|

Puisque nous sommes dans les options générales nous en profitons pour indiquer la limite du poids d'un message envoyé.

|| Paramètres supplémentaires| Résumé ||
|**Type de liste** |	**Diffusion** |	**Discussion Privée** | **Discussion Publique**|
|Taille maximale en kilo-octets (ko) du corps d'un message. Spécifiez 0 pour illimitée. | 0
_ (comme il s'agit d'une liste de diffusion, vous maitrisez parfaitement les envois, vous pouvez donc noter zéro)|40
_ (Ici il est important de limiter la taille des messages, tout le monde n'ayant pas un accès haut débit. Le 40 ko par défaut peut être laissé et, par la suite, modifié au besoin)|<|

Dans le menu général cliquer sur le lien {"Options de remise non-groupée}" (5ème ligne, 1ère colonne) 

Ces options concernent

  -  l'envoi immédiat des messages aux abonnés. Si nous avons choisi une liste de discussion, les abonnés doivent pouvoir choisir le mode de réception des messages immédiat ou groupé (par lots), c'est à dire tous les messages de x jours, semaines ou ... en un seul envoi.
  -  Les textes intégrés automatiquement à tout message envoyé à la liste (vous les avez reçus dans le message de bienvenue destiné à l'administrateur).
  - en-tête
  - pied de page

Attention, le pied de page par défaut contient un certain nombres d'informations sur la liste : adresse de la liste, URL de consultation de la page publique de la liste (page qui permet l'abonnement et la gestion d'options par les abonnés. Dans le cas d'une liste de diffusion il est impératif de supprimer le texte préexistant avant d'inscrire le votre, afin de supprimer le lien vers la page publique de la liste.

Modifier les valeurs comme suit :
|| Options de remise non-groupée| Résumé ||
|**Type de liste** |	**Diffusion** |	**Discussion Privée** | **Discussion Publique**|
|Les abonnés ont le droit de choisir de recevoir les courriel immédiatement plutôt que de les avoir par lots ?| OUI| OUI|OUI|
|En-tête ajouté aux messages envoyés aux abonnés réguliers |Exemple :
_ Liste de diffusion réservée aux abonnés de la liste INFO |Garder vide si vous le souhaitez|<|
|Pied de page ajouté aux messages envoyés par les membres réguliers de la liste.
_ {Attention : ne jamais mettre de caractères spéciaux dans ce texte (guillemets compris)}|Exemple :
_ Liste de diffusion INFO
_ Pour vous désabonner envoyez un mail à toto@alternc.org|Laisser le contenu  tel quel
_ %(real_name)s mailing list
_ %(real_name)s@%(host_name)s
_ %(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s|<|

Dans le menu général cliquer sur le lien "{Options de remise groupée}" (5ème ligne, 1ère colonne) 

Une seule case à modifier, la première (la seconde est pour mémoire, elle est configurée ainsi par défaut) :

|**Type de liste** |	**Diffusion** |	**Discussion Privée** | **Discussion Publique**|
|Les abonnés aux listes peuvent choisir de recevoir le trafic de la liste en mode groupé ?| NON|OUI|OUI|
|Quel est le mode de remise par défaut pour les nouveaux utilisateurs ?|Régulier|Régulier|Régulier|

Il est possible d'envoyer des requêtes par mail à mailman (demande de mot de passe, d'inscription, de liste d'abonnés ...). Dans le cas d'une liste de diffusion Il faut verrouiller cette possibilité :

Dans le menu général cliquer sur le lien "{Répondeur automatique}" (5ème ligne, 2ème colonne) et modifier les valeurs comme suit :

|**Type de liste** |	**Diffusion** |
|Mailman devra-il envoyer une réponse automatique aux courriels envoyés à l'adresse -owner ? |Oui, puis supprimer|
|Texte de répondeur automatique à envoyer à l'adresse -request|
Exemple
_ {La commande que vous avez effectuée ne peut pas être exécutée.
Pour tout changement dans votre abonnement contacter l'administrateur 
toto@alternc.org.}|


## Inscrire les abonnés

Afin de respecter la cohérence des choix (liste de diffusion, de discussion privée, de discussion publique) nous devons modifier tout d'abord les options d'abonnement.

Dans le menu général cliquer sur le lien "{Gestion des abonnements}" (4ème ligne, 1ère colonne) puis sur "{Abonnements en nombre}" et modifier les valeurs comme suit :

|**Type de liste** |	**Diffusion** |	**Discussion Privée** | **Discussion Publique**|

Dans un premier temps nous allons inscrire quelques adresses (que nous pouvons consulter), afin de vérifier la configuration de la liste.

Il existe deux méthodes pour inscrire des abonnés:

  - Inscrire dans le cadre  vide "Entrer une adresse par ligne ci-dessous..." la liste des adresses (une par ligne)
  - Utiliser la possibilité de télécharger la liste directement. Au-dessous de la première case blanche utiliser : 
<img src="/img/menu_gestionnaire_demo.png" title="to complete" alt="menu_gestionnaire_demo.png" />

Attention, ce fichier, présent sur votre ordinateur, doit être au format .txt
Et se présenter ainsi : une adresse par ligne, pas de ligne vide.

Lulu@lulu.fr
  - Mimi@mimi.net
  - jojo@jojo.info

Cliquer sur parcourir pour trouver ce fichier sur le disque dur de votre ordinateur, son chemin apparaît dans la case blanche.
Vous pouvez, indiquer un texte supplémentaire qui sera inclus dans le message de bienvenue des listes de discussion : Présentation des objectifs de la liste par exemple.

Valider vos enregistrements en cliquant, comme pour tout changement sur :
<img src="/img/menu_gestionnaire_demo.png" title="to complete" alt="menu_gestionnaire_demo.png" />

## Tests

Tester la liste avec des envois provenant de différents abonnés et de l'administrateur.
_Visualiser les messages depuis les différentes boites aux lettres.
_Dans le cas d'une liste de diffusion tester l'envoi de requêtes. [Liste des requêtes possibles en annexes->art18].
