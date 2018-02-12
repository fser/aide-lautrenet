Title: 02. Comment sauvegarder ma base de données SQL?  
Date: 2010-11-13 17:43:22
Category: 11. Sur les bases de données MySQL
Tags: old
Summary:  . 

**Comment sauvegarder ma base de données SQL?** 

On ne peut plus programmer de sauvegarde automatique depuis le bureau altern. C'est pas grave, puisque cela se fait désormais automatiquement et quotidiennement. Vous disposez sans avoir à vous en préoccuper d'une sauvegarde quotidienne sur les 7 derniers jours, et d'une sauvegarde hebdomadaire sur les 5 dernières semaines.

Au cas où vous vouliez faire une sauvegarde manuelle, il faut aller dans la partie Admin SQL du bureau. Cliquez sur votre login (en gras) dans le menu de gauche. Descendez tout en bas de la page de droite. Cliquez sur "Structure et données", puis sur "Transmettre", puis enfin sur "Exécuter".

**Comment restaurer une sauvegarde mySQL?** 

On va commencer par ouvrir une machine virtuelle et s'y connecter. Dans le bureau altern, colonne de gauche, cliquez sur « machines virtuelles (SSH) », puis dans la page ouverte, cliquez sur « demander un accès shell ». Une machine virtuelle est alors immédiatement à disposition et pour 4H. La page qui s'affiche vous donne votre nom d'utilisateur, votre mot de passe, le nom d'hôte de la machine et le port pour s'y connecter. Vous pouvez maintenant accéder à l'ensemble de votre compte et tout sauvegarder, ça ne fait jamais de mal (Filezilla fera ça très bien).

Les distributions linux un peu récentes permettent de se connecter à cette machine virtuelle très facilement via le protocole sécurisé SSH. Dans une console, taper :


<quote>$ ssh login@slave2.vds.lautre.net</quote>

(où login correspond au compte L'Autre Net du type
http://login.lautre.net)


Ca va alors vous demander votre mot de passe, et vous voilà connecté.

Pour Windows, vous pouvez utiliser le logiciel Putty.

Une fois connecté, vous êtes dans la machine en question, en mode console linux, positionné dans votre répertoire /home où se trouve votre site. Tapez :


<quote>$ cd ..</quote>


pour remonter à la racine, puis :


<quote>$ ls</quote>


pour voir tous les répertoires disponibles. Les sauvegardes sont dans le répertoire /backupsql :


<quote>$ cd /backupsql
_ $ ls</quote>


Vous voyez des répertoires correspondants aux sauvegardes de votre base des 7 derniers jours et des derniers mois.


<quote>$ cd /backupsql/datesouhaitée
_ $ ls</quote>


Il n'y a qu'un seul fichier, nommé par exemple basesauvegardée.sql.gz

Il faut alors décompresser ce fichier tout en le déplaçant dans le répertoire /home, le seul dans lequel on a des droits d'écriture.

$ gzip -dc /backupsql/datesouhaitée/basesauvegardée.sql.gz > ~/basesauvegardée.sql

On peut vérifier que le fichier décompressé est bien dans le /home :


<quote>$ cd /home
_ $ ls</quote>


on voit le /home, c'est à dire ce qu'on peut voir par le bureau altern quand on clique sur « gestionnaire de fichiers ». On y trouve notre basesauvegardée.sql, qu'on va maintenant pouvoir restaurer. Si on n'est pas sûr du nom de la base à remplacer, on le trouve en cliquant sur « bases de données » dans le bureau altern.


<quote>$ mysql -u utilisateur -p -h sql.lautre.net -D baseàremplacer < /home/sauvegarde.sql</quote>


Rentrez votre mot de passe.

On aurait sans doute aussi pu, pour aller plus vite et décompresser la base et la restaurer en une seule manip, faire :

<quote>
$ gzip -dc /backupsql/datesouhaitée/sauvegarde.sql.gz | mysql -u utilisateur -p -h sql.lautre.net -D baseàremplacer</quote>


Voilà, il n'y a plus qu'à aller vérifier sur le site en question que la base a bien été restaurée, non sans oublier de vider le cache du site le cas échéant.

N'oubliez pas de refermer la machine virtuelle qui a été ouverte en début de manip.
