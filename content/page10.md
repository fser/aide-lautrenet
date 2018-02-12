Title: 05. Protéger un répertoire 
Date: 2018-02-12 14:55:00 
Category: 04. Gestion d'un compte
Tags: old
Summary: Comment limiter l'accès de répertoires de votre site aux seuls visiteurs autorisés. . Vous souhaitez peut-être interdire la consultation publique de répertoires d'un site en la limitant à des visiteurs privilégiés. Ce peut-être un album photos, des pages réservées aux adhérents d'une association  ...
_ AlternC génère automatiquement les fichiers de protection nécessaires (« .htaccess » et « .htpasswd »)

## Répertoires protégés

Dans le gestionnaire de fichiers, le second lien « Cliquer ici pour protéger ce répertoire par un login / mot de passe », permet de protéger un ensemble de fichiers en limitant leur lecture aux utilisateurs autorisés.

Ouvrir le répertoire « {site} » dans le gestionnaire de fichiers et cliquer sur le lien « Cliquer ici pour protéger ce répertoire par un login / mot de passe »,

<img src="/img/rep_protege1.jpg" title="to complete" alt="rep_protege1.jpg" /> Valider en cliquant sur le bouton 
[protéger ce répertoire]

Ouvrir à nouveau le répertoire « {site} » dans le gestionnaire de fichiers.
Deux nouveaux fichiers « .htaccess » et « .htpasswd » ont été générés.
<img src="/img/rep_protege2.jpg" title="to complete" alt="rep_protege2.jpg" />
Le fichier « .htpasswd » ne contient aucune donnée (0 octet), Vérifier en l'éditant : il est vide. Aucun utilisateur n'est autorisé à visualiser les fichiers du répertoire.

Pour créer un utilisateur autorisé, cliquer sur le lien « Répertoires protégés » dans le menu du bureau.

<img src="/img/rep_protege4.jpg" title="to complete" alt="rep_protege4.jpg" /> <img src="/img/rep_protege3.jpg" title="to complete" alt="rep_protege3.jpg" />

Cliquer sur l'icône "crayon"

<img src="/img/rep_protege5.jpg" title="to complete" alt="rep_protege5.jpg" />

Cliquer sur le lien « Ajouter un utilisateur » Inscrire son nom (pas de caractère accentué) et un mot de passe.
_ Valider en cliquant sur le bouton [Ajouter l'utilisateur].

<img src="/img/rep_protege6.jpg" title="to complete" alt="rep_protege6.jpg" />
L'utilisateur a été enregistré.

<img src="/img/rep_protege7.jpg" title="to complete" alt="rep_protege7.jpg" />
Pour créer un nouvel utilisateur autorisé à consulter les pages du répertoire « {site} », cliquer sur le lien « Ajouter un utilisateur ».

Maintenant le fichier « .htpasswd » du répertoire « site » pèse quelques octets et contient des données. Vérifier en l'éditant :

<img src="/img/rep_protege8.jpg" title="to complete" alt="rep_protege8.jpg" />
Le nom est affiché en clair, le mot de passe est hashé (MD5). S'il est perdu, il est irrécupérable, la seule solution est de le modifier (modification que seule la personne ayant accès au bureau virtuel du compte ou ayant un accès FTP peut effectuer).
