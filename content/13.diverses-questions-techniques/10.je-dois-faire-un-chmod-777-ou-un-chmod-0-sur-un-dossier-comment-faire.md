Title: 10. Je dois faire une chmod 777 (ou un chmod 0) sur un dossier, comment faire ? 
Date: 2010-10-29 21:16:14
Category: 13. Diverses questions techniques
Tags: old
Summary:  . 

Comment faire un <code>chmod 777</code> sur un répertoire ?

L'infrastructure de Lautre.net ne permet pas cette cette action considérée comme pour le moins dangereuse. Sur le principe, faire un <code>chmod 777</code> revient à autoriser tout les internautes à avoir des droits de lecture, d'écriture et d'exécution sur le répertoire.

Les service web de lautre.net permettent uniquement de lire et d'écrire dans vos répertoires. Il y a de très fortes chances que le logiciel que vous tentez de faire fonctionner n'ait pas été conçu pour fonctionner sur un serveur mutualisé.

Cependant, si vous en éprouvez réellement le besoin d'utiliser le logiciel que vous tentez d'installer, contactez l'équipe technique afin qu'elle vous explique comment vous en passer.

Si cela étant fait vous en éprouvez toujours le besoin, alors demandez l'ouverture d'une machine virtuelle via le panel d'administration : le bureau.

Une fois connecté sur votre machine virtuelle vous pourrez effectuer une connexion de type : SSH ou SFTP et modifier tous les droits que vous souhaitez. 