Title: 03. phpMyAdmin 
Date: 2009-03-11 08:45:56
Category: 05. Gestion bases de données
Tags: old
Summary: phpMyAdmin est un logiciel libre qui permet de gérer des bases de données SQL en mode graphique. L'objet de cette aide est de présenter phpMyAdmin, non de balayer ses nombreuses possibilités.

phpMyAdmin est un logiciel libre qui permet de gérer des bases de données SQL en mode graphique. L'objet de cette aide est de présenter phpMyAdmin, non de balayer ses nombreuses possibilités.

Sa manipulation doit faire l'objet de précautions. Certes il n'est pas nécessaire d'être administrateur-système confirmé pour en faire une utilisation basique, toutefois son utilisation est déconsillée aux personnes qui n'ont aucune connaissance dans le domaine des bases de données.

phpMyAdmin se présente sous la forme d'une interface graphique;

<img src="/img/bdd8phpmyadm.png" title="to complete" alt="bdd8phpmyadm.png" />

Dans AlternC, il est inutile de l'utiliser pour créer une base de données. Il faut, dans ce cas, passer par le bureau virtuel de votre compte AlternC comme indiqué dans [Créer une base de données->art24].

Si vous confiez la réalisation de votre site web (par exemple) à un créateur n'ayant pas accès au bureau virtuel il faut procéder ainsi :

 - Créer depuis le bureau virtuel AlternC la base de données ou les bases de données dont il a besoin voir [Créer une nouvelle base de données->art24].
 - Créer un utilisateur MySQL avec un nom et un mot de passe spécifique, voir [Créer un utilisateur MySQL->art26]
 - Donner à cet utilisateur les droits souhaités sur les bases concernées, voir [Créer Donner des droits à un utilisateur MySQL->art26] 
 - Créer, si ce n'est déja fait un compte FTP spécifique,  voir [ Créer, gérer et configurer un compte FTP->art8] et lui transmettre les coordonnées de ce compte FTP.
 - Transmettre l'adresse de l'interface phpMyAdmin sur le serveur, soit 
<code>https://panel.lautre.net/admin/sql/index.php</code> adresse dans laquelle vous remplacerez mon serveur par le nom du serveur. Si la page s'affiche avec un menu déroulant, choisir le serveur «localhost» et non «localhost (root)».

**Testez que tout fonctionne AVANT de transmettre l'ensemble de ces informations.**
