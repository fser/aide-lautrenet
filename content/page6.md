Title: 02. Répertoires et fichiers 
Date: 2009-03-08 08:26:23
Category: 04. Gestion d'un compte
Tags: old
Summary: Comment gérer vos fichiers depuis le bureau virtuel. . Le gestionnaire de fichiers est l'élément central pour la gestion d'un site web.
Il est accessible depuis le lien « Gestionnaire de fichiers » du menu.

## Le gestionnaire de fichiers

<img172|center>
Ici nous utiliserons des copies d'écran issues soit du compte {demo}, soit du compte {aideac} en sachant que l'aide est valable quelque soit le compte concerné.

Dans la partie droite de la copie d'écran nous distinguons six zones.

1 - En haut à gauche une zone informative {demo/} : nous sommes à la racine du compte {demo}, racine symbolisée par la barre oblique (/)

2 - En haut à droite une zone de création 
<img23|right>
Sélectionner Fichier ou Répertoire, puis inscrire un nom dans la zone de texte (pour les fichiers ne pas oublier l'extension), crée le fichier, ou le répertoire souhaité.


3  Au centre une zone de manipulation des fichiers présents
<img22|center>

4 - Sous cette zone de manipulation, la liste des répertoires et fichiers présents sur le compte.
<img31|center>

5  Au dessous une zone de téléchargement (upload) de fichier depuis le disque dur de l'ordinateur du gestionnaire du compte
<img25|center>

5  En bas une zone de lien
<img26|center>

## Création d'un répertoire, d'un fichier

Sélectionner « Répertoire »<img27|right>
Inscrire le nom du répertoire dans la zone texte

(ici « site ») et cliquer sur [Créer]

Le répertoire apparaît dans la liste, avec la date et l'heure de création.
Il est inscrit en gras et son nom suivi d'une barre oblique (c'est ce qui affiche son statut de répertoire dans la liste)

Contrairement au fichier « index.php » il n'est pas suivi du lien « Voir ». Ce lien, « Voir » permet de visualiser dans le navigateur lla page composée par le code du fichier.

Nous allons {{créer un nouveau fichier}} que nous nommerons « index.html » (bien sélectionner « Fichier » avant de le créer !).
<img28|center>
Nous allons maintenant éditer ce fichier, pour cela il suffit de cliquer sur son nom. Dans la zone texte inscrivons une phrase (attention, il ne s'agit pas ici de code correct).

<img29|left>Remarque :  La zone de texte peut être ajustée en largeur et hauteur. Pour cela il suffit de tirer la double flèche noire, en bas à droite de la zone, en maintenant la touche Maj du clavier enfoncée.

Puis, cliquons sur le bouton [Enregistrer et Fermer] pour retourner dans le gestionnaire de fichiers (le bouton [Enregistrer] a pour effet d'enregistrer le fichier en le laissant ouvert, le bouton [Fermer] renvoie au gestionnaire de fichiers sans enregistrer le fichier).

<img30|center>
La zone informative, en haut du gestionnaire de fichiers, indique que le fichier a bien été enregistré (date et heure), le poids du fichier est passé de 0 à 38 octets.
_ Nous allons maintenant le visualiser dans le navigateur.
_ Avec le navigateur Firefox, un clic droit de souris sur le lien « Voir » qui suit le fichier « index.html » permet d'ouvrir le lien dans un nouvel onglet.
<img33|center>

Si vous n'utilisez pas un navigateur qui permet ce choix, vous pouvez ouvrir une autre fenêtre qui vous affichera l'adresse : http://aide-alternc.org/index.html

Remarquons que le fait d'indiquer l'URL http://aide-alternc.org/index.html dans le navigateur affiche automatiquement  http://www.aide-alternc.org/index.html [voir Paramétrer le domaine installé sur le serveur->art5]    

## Manipuler des fichiers

Revenons au gestionnaire de fichiers.
Nous allons déplacer le fichier « {index.html} » dans le répertoire « {site} ».
_ Cocher la case à gauche du nom du fichier puis cliquer sur le bouton de droite indiqué par une flèche rouge sur la copie d'écran.
<img35|center>

<img36|left>Cette action ouvre une petite fenêtre 
_ Cliquer sur le nom du répertoire « {site} »,  puis valider le choix avec le bouton [Sélectionner].
<img37|center>
Cliquer sur le bouton [Déplacer].
_ Le fichier ne s'affiche plus dans le gestionnaire de fichiers à la racine du compte : il est dans le répertoire « {site} », pour le retrouver il suffit de cliquer sur le nom de ce répertoire.
<img38|center>

Observons le gestionnaire de fichiers : la zone informative affiche le chemin depuis la racine du compte demo: {demo/site/}
La liste des fichiers se résume au seul fichier présent dans le répertoire « {site} », le fichier « {index.html} » que nous venons de déplacer.

Si nous ouvrons ce fichier dans un navigateur (lien « Voir »), l'adresse dans la barre d'URL est devenue : http://www.aide-alternc.org/site/index.html.

Nous allons, faire en sorte que le nom de domaine  http://www.aide-alternc.org ouvre directement ce fichier. 

Mais auparavant, nous allons supprimer le fichier «{ index.php} ».
_ Pour revenir à la racine du compte cliquer sur « {site} » dans la zone informative.
_ Sélectionner le fichier « index.php » (clic sur la case à gauche du nom pour la cocher), puis cliquer sur le bouton [Effacer]. Le fichier disparaît.

Soyons curieux : que se passe-t-il si nous inscrivons l'URL  http://www.aide-alternc.org dans la fenêtre d'un navigateur ?
<img39|center>
Aucun fichier index n'étant trouvé à la racine du compte, le navigateur affiche la liste des répertoires présents et autres fichiers  (ici les répertoires « {docs} » et « {site} ».  
_ Nous allons donc rapidement procéder au changement dans [Gérer domaine et sous-domaine->art7]

