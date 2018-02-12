Title: 01. Nom de domaine 
Date: 2009-03-08 07:51:11
Category: 04. Gestion d'un compte
Tags: old
Summary: Pour être actif, un compte doit être associé à un (ou plusieurs) nom(s) de domaine ou sous-domaines. . Pour être actif, un compte doit être associé à un (ou plusieurs) nom(s) de domaine ou sous-domaines.


## Achat du nom de domaine
Un nom de domaine se compose d'un nom suivi d'un point et d'une extension (fr, com, org, net ...). Chaque nom de domaine est unique au monde. 
_ Il s'acquiert auprès d'un registrar (vendeur de noms de domaine).
Exemples : alternc.org, octopuce.fr
_ Pour des domaines dont l'extension est net, org, com, fr ... acheter le domaine chez un registrar comme Gandi (http://gandi.net) ou BookMyName (http://bookmyname.com) par exemple.

**ATTENTION** Lorsque vous achetez un domaine deux cas de figure se présentent :
_ 1.  Vous indiquez immédiatement les DNS (adresses) du serveur qui gère les DNS. Pour les serveurs de L'Autre Net :

  -  ns1.lautre.net  (80.67.160.67)
  -  ns2.lautre.net (212.85.137.31)

2. Vous gardez les DNS de votre registrar (Gandi, Bookmyname...) et gérez manuellement, depuis le site du registrar, une redirection du nom de domaine vers lautre.net, dans ce cas  il faut indiquer l'adresse de notre serveur web, soit 80.67.160.70.

Si vous avez un doute il vaut mieux nous poser la question !

Il faut acheter le nom de domaine avant de l'installer, sauf pour les noms de domaine en .fr ou .eu, où il faut installer le domaine avant de l'acheter.
_ Une vérification automatique est faite lorsqu'un domaine est installé. Si les DNS correctes ne sont pas enregistrées dans la base mondiale des noms de domaines, le serveur refusera l'installation, sauf si l'administrateur des comptes AlternC en a donné l'autorisation et vous l'a indiqué : voir chapitre « Administration des comptes ».  

Mais, pour que le monde entier puisse consulter les pages web vers lesquelles pointe le nom de domaine il faut attendre que les fournisseurs d'accès internet aient bien enregistré l'information afin de diriger leurs usagers vers le bon serveur (compter entre 24 et 72 heures). 
## Installation d'un nom de domaine sur un compte AlternC
L'accès au formulaire d'installation se fait par un clic sur le lien « Domaines » puis « Heberger un domaine » dans le menu.
_ Dans la partie droite du bureau virtuel, le formulaire s'affiche.
_ Inscrire le nom de domaine souhaité (sans les www).

**{Premier exemple}**
<img src="/img/ndd.jpg" title="to complete" alt="ndd.jpg" />
Le nom de domaine lautre,net n'est pas enregistré comme hébergé par ce serveur.
Le serveur ne l'installera pas, comme l'indique le message d'erreur ci-dessous.
<img src="/img/ndd_0.jpg" title="to complete" alt="ndd_0.jpg" />

**{second exemple}**
Installation du domaine aide-alternc.org
<img src="/img/ndd_1.jpg" title="to complete" alt="ndd_1.jpg" />
Ce domaine s'installe sans problème
<img src="/img/ndd_2.jpg" title="to complete" alt="ndd_2.jpg" />

<img src="/img/ndd_3.jpg" title="to complete" alt="ndd_3.jpg" />Un clic sur le lien « Cliquer ici pour continuer » affiche le nouveau menu du bureau : le nom de domaine aide-alternc.org est inscrit dans la rubrique « Domaines ».

Il faut toutefois attendre environ 5 minutes pour qu'il soit bien pris en compte par le serveur, puis 1 heure pour qu'il soit pris en compte par les machines qui gère nos DNS (primary et secondary).

La procédure serait exactement la même pour un nom de domaine dont l'extension serait org, net, com, info ...

Comme signalé ci-dessus, certains noms de domaine doivent être installés sur le serveur AVANT leur achat. C'est la cas des noms de domaine en .fr car l'afnic (organisme qui gère ces noms) vérifie que le serveur est conforme à ce qui est demandé pour l'hébergement de ce type de nom de domaine. Ne pas hésiter à nous demander des informations à ce propos si nécessaire.

Nous allons maintenant étudier plus spécifiquement les paramètres de ce nom de domaine sur le serveur.

Pour cela il suffit de cliquer sur le lien « aide-alternc.org » dans la rubrique « Domaines » du menu.

## Paramétrer le domaine installé sur le serveur

La partie gauche du bureau virtuel affiche deux zones : Sous-domaines et paramètres DNS.  Dans ce premier temps, nous nous limiterons à les décrire.
_ Pour une gestion des domaines st sous-domaines en fonction des répertoires et fichiers se repporter à l'article "Gestion de domaine et sous-domaine".
<img src="/img/ndd_4.jpg" title="to complete" alt="ndd_4.jpg" />

**{Sous-domaines}**

<img src="/img/ndd_ssd.jpg" title="to complete" alt="ndd_ssd.jpg" />
Cette zone propose des liens et des formulaires. Actuellement elle indique que l'URL : aide-alternc.org est dirigée vers  www.aide-alternc.org, elle même gérée en local (sur ce compte) et pointant à la racine du compte « / », cette barre oblique représente la racine.
_ Nous y reviendrons dans la sous-rubrique « Gestionnaire de fichiers ».

**{Paramètres DNS}**

ATTENTION : NE JAMAIS MODIFIER CES PARAMÈTRES SANS L'AVIS DE L'ADMINISTRATEUR DU SERVEUR.

<img src="/img/ndd_zonedns.jpg" title="to complete" alt="ndd_zonedns.jpg" />
Les DNS de ce domaine sont gérés par votre serveur ainsi que les mails liés au domaine.
_ Attention, le bouton [Effacer aide-alternc.org] supprime le domaine de ce compte.


## Cas particulier des TLD suivants : .fr, .re, .de et .eu.org

Si vous souhaitez installer un domaine en .fr, .re, .de ou en .eu.org sur L'Autre Net, il faut absolument installer ce domaine sur lautre.net **AVANT** de demander la création du TLD auprès de votre registrar.

En effet, ces TLD vérifient que les DNS de L'Autre Net répondent bien pour le domaine demandé avant d'autoriser sa création. Aussi est-il nécessaire de les installer sur L'Autre Net avant d'en demander leur création.

Une fois le domaine installé sur votre compte, patientez environ une heure (le temps que ns2.lautre.net installe aussi le nouveau domaine) et demandez alors à votre registrar de mettre les nouveaux DNS.

Pour vérifier le domaine auprès de l'AFNIC, utilisez l'outil Zonecheck à l'adresse
[http://www.afnic.fr/outils/zonecheck/form->http://www.afnic.fr/outils/zonecheck/form]
et entrez :

  -  votre nom de domaine à côté de "Zone"
  -  ns1.lautre.net en face de "primaire"
  -  ns2.lautre.net en face de "secondaire"

Note pour les .eu.org : il semble que certains des root de l'autre net soient co-admin de eu.org, aussi si vous devez réserver un domaine en .eu.org, demandez la réservation sur eu.org, puis envoyez un petit mail à {root arobase lautre.net} pour qu'ils vous valident le nom de domaine dans l'élan ;)


## Le dernier membre du domaine est incorrect ou non hébergeable sur ce serveur.
Envoyez un p'tit mail à {root arobase lautre.net} pour qu'ils ajoutent votre TLD dans la liste des domaines supportés.