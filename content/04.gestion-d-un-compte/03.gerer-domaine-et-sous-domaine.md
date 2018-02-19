Title: 03. Gérer domaine et sous-domaine 
Date: 2009-03-08 11:46:44
Category: 04. Gestion d'un compte
Tags: old
Summary: Comment faire poointer un nom de domaine ou un sous-domaine vers un répertoire spécifique de votre compte AlternC. . Depuis le bureau virtuel AlternC il est très aisé de diriger un domaine ou un sous-domaine vers le répertoire de son choix.

## Modifier le chemin d'un nom de domaine

<img src="/img/menu_gestionnaire.png" title="to complete" alt="menu_gestionnaire.png" />
Dans le menu du bureau virtuel, cliquer sur le lien « aide-alternc.org » dans la rubrique « Domaines ». Cette action affiche un formulaire dans la partie droite du bureau virtuel.

<img src="/img/menu_gestionnaire.png" title="to complete" alt="menu_gestionnaire.png" />
Il s'agit de faire pointer le nom de domaine installé vers le répertoire « {site} » en utilisant le bouton [Modifier], symbolisé ici par une petite icône représentant un crayon, et le formulaire.

Attention, compter 5 minutes après chaque manipulation pour que les modifications soient prises en compte, comme indiqué dans le paragraphe [installation d'un nom de domaine sur un compte AlternC->art5].
_ En effet un « cron », petit programme, se déclenche toutes les 5 minutes sur le serveur pour mettre à jour les modifications sur les noms de domaines et sous-domaines installés sur ce serveur.

Nous remarquons que aide-alternc.org pointe vers www.aide-alternc.org qui pointe vers le répertoire racine (/).

Cliquer sur l'icône crayon qui précède www.aide-alternc.org (attention, l'icône avec la croix rouge supprime le nom de domaine !).
<img src="/img/menu_gestionnaire.png" title="to complete" alt="menu_gestionnaire.png" />

Conserver la sélection  « Géré en local » et cliquer sur le bouton  <img src="/img/menu_gestionnaire.png" title="to complete" alt="menu_gestionnaire.png" />

Dans la petite fenêtre qui s'ouvre « Recherche d'un répertoire » sur le nom du répertoire « site », puis valider le choix avec le bouton [Sélectionner], comme nous l'avions fait pour  [Manipuler des fichiers->art6]

<img src="/img/menu_gestionnaire.png" title="to complete" alt="menu_gestionnaire.png" />

Dans la partie droite du bureau les informations ont été prises en compte : cliquer sur le bouton [Valider les changements]. Voici le résultat affiché :

<img src="/img/menu_gestionnaire.png" title="to complete" alt="menu_gestionnaire.png" />

En inscrivant l'URL www.aide-alternc.org dans une fenêtre de navigateur, nous ouvrons maintenant, directement le fichier « index.html » du répertoire « site ».
_ Il en est de même pour l'URL  aide-alternc.org, puisqu'elle renvoie vers   www.aide-alternc.org

Poursuivons nos manipulations en installant un sous-domaine.

## Création d'un sous-domaine

Nous allons installer un sous-domaine sur le compte « aideac» et faire pointer ce sous- domaine vers un répertoire créé pour l'occasion.
La première étape consiste à créer le répertoire.

  -  **1 Création du répertoire** 
A la racine du compte nous créons le répertoire « {toto} », comme nous avons créé le répertoire « {site} ».
  -  **2 Création du sous-domaine**
Cliquer sur le lien « aide-alternc.org » dans la rubrique « Domaines » du menu.
Dans la première zone texte inscrire le nom du répertoire « {toto} »

Sélectionner « Géré en local » puis cliquer sur le bouton <img src="/img/menu_gestionnaire.png" title="to complete" alt="menu_gestionnaire.png" />

<img src="/img/menu_gestionnaire.png" title="to complete" alt="menu_gestionnaire.png" />
Dans la petite fenêtre, cliquer sur le nom du répertoire « {toto} », puis valider le choix avec le bouton [Sélectionner].

Enfin, cliquer sur le bouton [Ajouter un sous-domaine].
<img src="/img/menu_gestionnaire.png" title="to complete" alt="menu_gestionnaire.png" />
Le sous-domaine figure maintenant dans la liste affichée.
_ Pour ne pas perdre de temps, nous allons mettre à profit les 5 minutes d'attente, avant la prise en compte de ce sous-domaine, pour créer le fichier «{ index.html }» dans le répertoire « {toto} ».

Dans le menu (partie gauche du bureau virtuel), cliquer sur le lien « Gestionnaire de fichiers ».

  -  **3 Création du fichier «{ index.html }» du répertoire « {toto} »**

Ouvrir le répertoire « toto » en cliquant sur son nom dans la liste des répertoires et fichiers.
Créer un fichier « {index.html} » dans ce répertoire.
_ Editer ce fichier (clic sur son nom) et inscrire le code voulu (ici du HTML très basique)
<img src="/img/menu_gestionnaire.png" title="to complete" alt="menu_gestionnaire.png" />
Puis cliquer sur le bouton [Enregistrer et fermer].

  -  **4 Vérification**
Si l'opération nous a pris plusieurs minutes il y a de grandes chances que le sous-domaine « toto.aide-alternc.org  » soit pris en compte sur le serveur.
Pour le vérifier, ouvrir un nouvel onglet ou une fenêtre du navigateur et inscrire l'URL http://toto.aide-alternc.org (attention sans les www !)

<img src="/img/ndd_sd_add5.jpg" title="to complete" alt="ndd_sd_add5.jpg" />

Voici le résultat dans un nouvel onglet du navigateur Firefox.

 

