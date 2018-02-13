Title: 03. Se connecter en SSH 
Date: 2009-09-07 15:39:27
Category: 10. Accès sécurisé aux données (SSH et SFTP)
Tags: old
Summary: L'accès à votre compte via SSH est une possibilité basée sur la ligne commande sous Linux, techniquement un peu plus compliquée mais extrêmement souple et puissante. . L'accès à votre compte via SSH est une possibilité basée sur la ligne commande sous Linux, techniquement un peu plus compliquée mais extrêmement souple et puissante.

**Attention cette fonctionnalité est actuellement indisponible.**

La connexion en SSH nécessite d'avoir au préalable [activé la connexion sécurisée à votre compte->34]. Pensez, lors de cette étape, à bien noter le nom d'hôte indiqué par le bureau virtuel (quelque chose ressemblant à slave1.vds.lautre.net).


## Connexion SSH sous Mac OS ou Linux

Sous Linux, un client SSH est habituellement installé par la plupart des distributions. Si ça n'est pas le cas (si la commande SSH n'est pas disponible), il vous suffit d'installer le paquet nommé openssh ou quelque chose d'équivalent. Sous Mac OS, un client SSH est disponible "en standard".

Dans les deux cas, ouvrez un terminal (sous Mac OS utilisez l'application {Terminal} située dans votre répertoire {Applications/Utilitaires}. Tapez ensuite la commande suivante :

````
ssh utilisateur@hote
````

En remplaçant "utilisateur" par votre identifiant de connexion au bureau virtuel, et "hote" par le nom d'hôte donné lors de l'activation de l'accès sécurisé. Ainsi, si vous êtes titulaire du compte "comptedemo" et qu'un accès vous a été ouvert sur l'hôte slave2.vds.lautre.net, vous devez taper :

````
ssh comptedemo@slave2.vds.lautre.net
````

Il se peut que le système vous demande d'accepter la clé publique de la machine : c'est tout à fait normal s'il s'agit de votre première connexion, vous pouvez donc accepter sans souci.

Une invite vous demande ensuite votre mot de passe : il s'agit du mot de passe que vous utilisez pour vous connecter au bureau virtuel. Saisissez-le, et si tout s'est bien passé vous devriez maintenant être connecté.

## Connexion SSH sous Windows

L'accès en SSH sous Windows nécessite l'installation d'un logiciel spécifique. Le plus couramment utilisé est sans doute PuTTY, qui est librement téléchargeable à l'adresse suivante :

http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html

Cliquez sur le premier lien "putty.exe" de la page, ou utilisez directement le lien suivant :

http://the.earth.li/~sgtatham/putty/latest/x86/putty.exe

Une fois PuTTY installé, lancez-le, et vous devriez obtenir une fenêtre de configuration :

<img src="/img/ndd_4.jpg" title="to complete" alt="ndd_4.jpg" />

Le seul champ à renseigner est {Host name} (en rouge sur la capture d'écran), dans lequel vous devez indiquer le nom d'hôte qui vous a été attribué lors de l'activation de votre accès sécurisé. Cliquez ensuite sur le bouton {Open}.

Une fenêtre de terminal devrait s'ouvrir avec la mention {Login as}. Saisissez alors votre identifiant de connexion au bureau virtuel (le nom de votre compte). PuTTY va alors vous demander votre mot de passe : il s'agit du mot de passe de connexion au bureau virtuel. Saisissez-le (ce que vous tapez ne s'affiche pas pendant la saisie) et validez : ça y'est, vous êtes connecté !

## Et maintenant ?

Une fois connecté, vous êtes dans une machine virtuelle, en mode console de Linux, positionné dans le répertoire /home où se trouve votre site. Vous pouvez taper la commande :

````
$ ls
````

pour lister les répertoires et fichiers situés à la racine de votre site. Vous pouvez également faire :

````
$ cd ..
````

pour remonter à la racine, puis :

````
$ ls
````

pour voir tous les répertoires disponibles. Vous pouvez voir que cette machine ressemble beaucoup à la racine d'un système Linux. Les adeptes du libre (et de la console) ne seront donc pas trop perdus. Vous n'avez {a priori} de droits d'écriture que sur le répertoire /home. Mais attention, vous êtes quand même connecté d'une façon dangereuse qui pourrait en cas de fausse manipulation affecter définitivement votre site. 

Pour des raisons de sécurité, seule une partie des commandes Linux usuelles sont autorisées dans les machines virtuelles. La liste des commandes disponibles se trouve sur la page {Machines virtuelles} de votre bureau.

<img src="/img/ndd_4.jpg" title="to complete" alt="ndd_4.jpg" />


