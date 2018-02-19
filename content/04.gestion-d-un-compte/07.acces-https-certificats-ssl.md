Title: 07. Accès HTTPS / Certificats SSL 
Date: 2017-02-02 15:48:33
Category: 04. Gestion d'un compte
Tags: old
Summary: L'Autre Net utilise Let's Encrypt pour générer des certificats SSL . La génération de certificat SSL se fait normalement de manière automatique. En cas de problème de certificat SSL non généré, puisque cette fonctionnalité est en phase de tests, vous pouvez contacter les roots. Pour les sous-domaines *.lautre.net, lire la note en bas de page.

## Si vous disposez de votre propre nom de domaine

Les certificats SSL ne sont générés que si la racine du nom de domaine est hébergée sur l'Autre Net. Ils sont également regénérés à chaque ajout de sous-domaine.

Afin de rediriger le trafic en clair automatiquement vers votre adresse https:// vous pouvez modifier le fichier .htaccess à la racine de votre domaine en y insérant les lignes suivantes:


<code>
RewriteEngine On
RewriteBase /

RewriteCond %{HTTP:X-Forwarded-Proto} !https
RewriteRule ^ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]
</code>

Lorsque vos tests sont convaincants et que vous êtes certain de n'avoir pas un seul problème de contenu en clair dans votre site (appel à une ressource externe non sécurisée en https par exemple), vous pouvez également insérer la ligne suivante dans votre fichier .htaccess

<code>Header set Strict-Transport-Security "max-age=60000; includeSubdomains; "</code>

Cela aura pour effet de mémoriser au sein du navigateur le choix de la version "https" en réduisant à zéro le nombre de transactions non cryptées.


## Sous-domaines en *.lautre.net

Si vous essayez d'accéder à un sous-domaine de deuxième niveau (par ex: https://www.login.lautre.net/) cela ne fonctionnera pas, car le certificat wildcard du domaine de *.lautre.net ne couvre que les sous-domaines de premier niveau (ex: https://login.lautre.net). Assurez-vous donc d'utiliser cette adresse plutôt que la précédente.