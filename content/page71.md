Title: Bienvenue à l'Autre Net 
Date: 2011-06-03 09:02:11
Category: 01. Bienvenue 
Tags: old
Summary: Vous venez de créer un compte et vous souhaitez publier sur internet. Les pages qui suivent ont pour but 
I. de vous faire faire un premier « tour de la maison » et
II. traiter d'un cas très simple : publier une première page sur internet. 
L'objectif est de vous montrer le B.A  BA, en supposant que vous n'y connaissez pas grand chose. . 

Vous venez de créer un compte et vous souhaitez publier sur internet. Les pages qui suivent ont pour but 
- de vous faire faire un premier « tour de la maison » et
- traiter d'un cas très simple : publier une première page sur internet. 

L'objectif est de vous montrer le B.A  BA, en supposant que vous n'y connaissez pas grand chose[[Donc, les geeks, passez votre chemin, sauf si vous avez des suggestions « constructives » ;-)]].

Pour faire cette note, nous avons crée un compte ayant pour nom {bienvenue}. C'est le nom_du_compte ou le login ou le nomdevotrecompte[[Dans les pages de documentation vous verrez ces trois termes utilisés indistinctement. Dans ce texte, {bienvenue} est à remplacer par le nom de votre compte.]], que nous avons choisi lors de notre inscription :

<img src="/img/ndd_zonedns.jpg" title="to complete" alt="ndd_zonedns.jpg" />

Le login n'est pas modifiable par la suite. C'est ce login (ou nom_du_compte) qui nous permet de [nous connecter au bureau de gestion de notre hébergement->https://panel.lautre.net/admin/] :

<img src="/img/ndd_zonedns.jpg" title="to complete" alt="ndd_zonedns.jpg" />

## Un tour de la maison

Lorsque nous arrivons dans notre espace de travail :

<img src="/img/LAN_MenuAccueilComplet.png" title="to complete" alt="LAN_MenuAccueilComplet.png" />

nous pouvons constater, dans la colonne de gauche (Menu) que nous avons déjà :
- un domaine : {bienvenue}.lautre.net ;
- un compte ftp (file transfert protocole) pour échanger des fichiers entre votre espace d'hébergement et votre ordinateur;
- une adresse mail associé à notre domaine, donc qui sera de la forme : @{bienvenue}.lautre.net ;

Nous avons aussi, mais cela ne se voit pas dès l'arrivée dans le Menu :
- un emplacement prêt à recevoir les fichiers de notre site : /www/{bienvenue}.lautre.net ;

**Nous avons déjà un « domaine[[Par commodité de langage on parle de domaine et sous-domaine en prenant comme référence le point de départ dans l'arborescence (domaine). Si nous nous situons dans lautre.net, alors {bienvenue}.lautre.net est un sous-domaine, mais si nous nous situons dans {bienvenue}.lautre.net (domaine) alors www.{bienvenue}.lautre.net est un sous-domaine.]] ».** 

En créant notre compte, et tel qu'il est dit dans la [page d'accueil de notre association->http://www.lautre.net/] « chaque membre de lAutre Net dispose de 1 sous-domaine en lautre.net (nomdevotrecompte.lautre.net) ». C'est le Login souhaité que nous avons indiqué (voir écran Etape 4: informations personnelles). Nous avons maintenant un sous-domaine : {bienvenue}.lautre.net, comme on le voit dans la zone entourée :

<img src="/img/ndd_zonedns.jpg" title="to complete" alt="ndd_zonedns.jpg" />

Saisissons ce nom de domaine dans la barre d'adresses de notre navigateur :

<img src="/img/LAN_Test_bienvenue_lautre_net_bulleAdresse.png" title="to complete" alt="LAN_Test_bienvenue_lautre_net_bulleAdresse.png" />

ce qui nous donne :

<img src="/img/LAN_TestNomDeDomaine_resultat.png" title="to complete" alt="LAN_TestNomDeDomaine_resultat.png" />

Nous avons maintenant un www. qui est apparu dans l'adresse. Et la page nous affiche un Index of /

Pour comprendre revenons au bureau, et regardons de plus près notre domaine, en cliquant sur son nom ({bienvenue}.lautre.net). Nous obtenons :

<img src="/img/LAN_EditionDuDomaineBienvenue_SousDomaines_bullesCarreEtOvale.png" title="to complete" alt="LAN_EditionDuDomaineBienvenue_SousDomaines_bullesCarreEtOvale.png" />

Dans la partie droite du bureau il y a une liste à deux parties : sur la gauche (entourée carré) les sous-domaines de notre tout nouveau domaine {bienvenue}.lautre.net, ce dernier compris, et à droite (entourée ovale) où ils se trouvent. Regardons le domaine {bienvenue}.lautre.net en cliquant sur crayon à gauche de son nom. Nous obtenons :

<img src="/img/LAN_EditionSousDomaineBienvenue_bulleRedirectionHttp.png" title="to complete" alt="LAN_EditionSousDomaineBienvenue_bulleRedirectionHttp.png" />

Ce sous-domaine est redirigée vers une autre adresse (un autre sous-domaine) qui est http://www.{bienvenue}.lautre.net. Voilà pourquoi quand nous avons tapé http://{bienvenue}.lautre.net.nous avons vu apparaître http://www.{bienvenue}.lautre.net.

Qu'il y a-t-il derrière http://www.{bienvenue}.lautre.net? Si nous revenons en arrière, puis cliquons cette fois-ci sur le crayon à coté de www.{bienvenue}.lautre.net, nous avons :

<img src="/img/LAN_EditionSousDomaine_www_bienvenue-lautre-net_bulleGereEnLocal.png" title="to complete" alt="LAN_EditionSousDomaine_www_bienvenue-lautre-net_bulleGereEnLocal.png" />

Il est indiqué que ce sous-domaine est « géré en local », autrement dit que les fichiers sont dans le serveur de l'Autre Net, et il nous dit où sont ces fichiers : dans le répertoire /www/{bienvenue}.lautre.net.[[Nota bene : nous nous demandons pourquoi ce salamalec d'aller de {bienvenue}.lautre.net à www.{bienvenue}.lautre.net. C'est que nous avons des roots (ce sont les nounous qui font que nos serveurs tournent) très organisés. Pour comprendre, voici un extrait de wikipedia :

«Dans le système de noms de domaine, un nom de domaine (NDD en notation abrégée française ou DN pour Domain Name en anglais) est un identifiant de domaine internet. 

Un nom de domaine est un « masque » sur une adresse IP. Le but d'un nom de domaine est de retenir facilement l'adresse d'un site. Par exemple, wikipedia.org est plus simple à mémoriser que 91.198.174.2. 

Le système de nom de domaine est hiérarchique, permettant la définition de sous-domaines. 

Le nom de domaine est composé d'au moins deux mots, les labels. S'il y a plusieurs labels (et il y a au moins deux), on doit les séparer par un point. 

Dans un nom de domaine, le label d'extrême droite doit être choisi dans la liste des noms de domaine de premier niveau, appelé aussi domaine de tête (en anglais Top Level Domain ou TLD). 
Il existe deux types de domaines de premier niveau : 
   1. les domaines nationaux de premier niveau (en anglais Country Code Top-Level Domain ou ccTLD) composés de deux lettres identifiant un pays ou un territoire indépendant (exemple : fr pour France) ; 
   2. les domaines de premier niveau génériques (en anglais generic Top-Level Domain ou gTLD) composés de trois lettres ou plus identifiant généralement le secteur d'activité dans lequel opèrent les individus ou les organisations qui les utilisent : org, net, com.

Le nom d'un domaine de deuxième niveau doit inclure un minimum de 3 et un maximum de 63 caractères. 

Le terme domaine désigne habituellement un domaine de deuxième niveau. Voici quelques noms de domaine valides : wikipedia.org, paris.fr,  louvre.museum, yaourt.biz et lautre.net. 

Il est possible de définir des sous-domaines dans un domaine. **L'un des sous-domaines les plus répandus est « www »**, mais il est possible d'utiliser n'importe quelle suite de caractères satisfaisant les conditions générales de rédaction des noms de domaine. Par exemple, tour-eiffel.paris.fr est un sous-domaine de paris.fr, et {bienvenue}.lautre.net est un sous-domaine de lautre.net. 

Le Domain Name System (ou DNS, système de noms de domaine) est un service permettant d'établir une correspondance entre une adresse IP et un nom de domaine et, plus généralement, de trouver une information à partir d'un nom de domaine. 

(sources: http://fr.wikipedia.org/wiki/Nom_de_domaine et http://fr.wikipedia.org/wiki/Serveurs_DNS, à peine modifiées) »

Donc nos roots préparent déjà le domaine « normal » du web : www.]]

Nous avons déjà un nom de domaine, mais en plus...

**Nous avons déjà un emplacement prêt à recevoir les fichiers de notre site.**

Dans la colonne Menu, à gauche, nous avons le choix Gestionnaire de fichiers :

<img src="/img/LAN_EcranAccueil_bulleGestionnaireDesFichiers.png" title="to complete" alt="LAN_EcranAccueil_bulleGestionnaireDesFichiers.png" />

Si on clique dessus :

<img src="/img/LAN_EcranGestionnaireDeFichiers_nv1_bullesRacineEtRepertoires.png" title="to complete" alt="LAN_EcranGestionnaireDeFichiers_nv1_bullesRacineEtRepertoires.png" />

nous voyons que dans notre espace de travail {bienvenue} (entourée en haut, qui est la « racine » de notre site, et que l'on symbolise par /) se trouvent déjà trois répertoires[[Un répertoire c'est un dossier. Dans le Gestionnaire des fichiers du bureau AlternC les répertoires sont indiqués par un nom suivi d'un /]] (entourés en bas) : backups/, stats/ et www/. Cliquons dans le répertoire www/ (c'est-à-dire sur son nom) :

<img src="/img/LAN_EcranGestionnaireDeFichiers_nv2.png" title="to complete" alt="LAN_EcranGestionnaireDeFichiers_nv2.png" />

Ce répertoire contient un autre répertoire : {bienvenue}.lautre.net. Cliquons sur son nom :

<img src="/img/LAN_EcranGestionnaireDeFichiers_nv3.png" title="to complete" alt="LAN_EcranGestionnaireDeFichiers_nv3.png" />

Ce répertoire est vide.

Donc, lorsque nous avons tapé dans la barre adresses du navigateur {bienvenue}.lautre.net nous avons été redirigés vers http://www.{bienvenue}.lautre.net, et là on nous a dit d'aller chercher les fichiers « en local » dans le répertoire /www/{bienvenue}.lautre.net.

Il n'y a rien dedans. C'est pour cela que notre navigateur affiche l'index of / et rien d'autre. Le navigateur suit le cheminement que nous avons fait, puis affiche ce qu'il y a : rien, liste vide.

**Nous avons déjà un compte ftp.**

Pour échanger des fichiers entre notre espace d'hébergement et notre ordinateur nous pouvons :
- le faire directement, mais uniquement dans le sens notre ordinateur vers notre espace d'hébergement, avec AlternC tel que [c'est expliqué dans la documentation->http://aide.lautre.net/Import-de-fichiers-et-FTP] et plus loin dans ce document ;
- utiliser le [protocole de transfert de fichiers ftp->http://fr.wikipedia.org/wiki/Ftp] et un logiciel spécialisé telle que [FileZilla->http://www.filezilla.fr/][[Il y a beaucoup de logiciels pour cela. Nous utilisons FileZilla.]]. Pour cela il faut qu'il y ait un « compte ftp » permettant la connexion à notre espace par ce protocole. **Ce compte ftp est déjà prêt**. Si nous cliquons sur le choix « liste des comptes ftp » dans le Menu :

<img src="/img/LAN_EcranAccueil_ComptesFTP_bulleComptesFTP.png" title="to complete" alt="LAN_EcranAccueil_ComptesFTP_bulleComptesFTP.png" />

nous obtenons :

<img src="/img/LAN_ListeDesComptesFtp.png" title="to complete" alt="LAN_ListeDesComptesFtp.png" />

Nous voyons qu'il existe un compte ayant pour utilisateur {bienvenue} et qui « pointe » sur la racine de notre espace d'hébergement, c'est à dire /. Ce compte par défaut a le même mot de passe que notre compte (celui que nous utilisons pour nous connecter au bureau).

**Nous avons déjà un compte mail.**

Lors de la création du compte à l'Autre Net un compte mail par défaut est crée, attaché à notre domaine , c'est à dire de la forme @{bienvenue}.lautre.net:

<img src="/img/bureau_gest_detail_new.png" title="to complete" alt="bureau_gest_detail_new.png" />

En cliquant sur ce compte (c'est à dire sur son nom) :

<img src="/img/bureau_gest_detail_new.png" title="to complete" alt="bureau_gest_detail_new.png" />

nous voyons que ce compte mail par défaut est {bienvenue}@{bienvenue}.lautre.net  (login@login.lautre.net), et si nous regardons ses caractéristiques en cliquant sur le crayon à cote :

<img src="/img/bureau_gest_detail_new.png" title="to complete" alt="bureau_gest_detail_new.png" />

nous constatons qu'il y a déjà une redirection des mails vers l'adresse que nous avons fournit en remplissant le formulaire d'adhésion. Donc, par défaut, les mails qui sont envoyés à  {bienvenue}@{bienvenue}.lautre.net vont arriver à notre adresse de contact, qui est aussi celle que nous utilisons pour participer à notre assemblée générale permanente.

Mais comment lire directement les messages adressés à {bienvenue}@{bienvenue}.lautre.net ? Comme il est indiqué dans cette page, « vous pouvez consulter votre boîte au lettres par webmail » 
- en allant sur l'adresse http://{bienvenue}.lautre.net/webmail/  
- avec pour identifiant {bienvenue}@{bienvenue}.lautre.net 
- et pour mot de passe celui de votre compte. 
**Mais il faut au préalable avoir coché la casse Compte POP**, comme c'est écrit « Si vous voulez stocker les emails recus et y accéder avec un logiciel de messagerie ou le webmail, cochez la case 'Compte pop'. ». **Sinon ça marchera pas**. Nous pouvons aussi par la même occasion changer le mot de passe, mais c'est optionnel.

<img src="/img/SquirrelMail_bienvenue.png" title="to complete" alt="SquirrelMail_bienvenue.png" />


## Une première page.

Nous avons vu que le répertoire par défaut de notre site web www.{bienvenue}.lautre.net est vide. Comment faire un site ? 

Nous allons commencer, juste pour la démonstration, par une manipulation très simple : nous allons y placer un fichier dans notre répertoire /www/{bienvenue}.lautre.net.

Comme nous le savons, les navigateurs, quand ils arrivent quelque part sans autre indication qu'un répertoire, cherchent dans ce répertoire un fichier qui se nommerait index.html, et s'ils le trouvent ils l'ouvrent. Nous allons donc placer un fichier avec ce nom dans notre répertoire. Dans ce fichier y a cela :

````
<html><body><h1>ça marche!</h1> 
<p>Ceci est la page web par défaut de ce site.</p> 
<p>Le site fonctionne mais aucun contenu n'a été ajouté, encore.</p> 
</body></html>
````

C'est « une page html » on ne peut plus basique. Ce fichier est sur le bureau de notre pc. Si nous regardons l'illustration « Gestionnaire de fichiers, répertoire /www/bienvenue.lautre.net » :

<img src="/img/LAN_GestionnaireDeFichiers_repertoire_www_bienvenue_vide_bulleImporterFichier.png" title="to complete" alt="LAN_GestionnaireDeFichiers_repertoire_www_bienvenue_vide_bulleImporterFichier.png" />

nous voyons qu'il y a une zone qui nous permet d'importer un fichier : en cliquant sur le bouton Parcourir..., une fenêtre s'ouvre et nous pouvons chercher le fichier dans notre disque dur :

<img src="/img/LAN_EnvoiFichierAlternC_bullesIndexEtOuvrir.png" title="to complete" alt="LAN_EnvoiFichierAlternC_bullesIndexEtOuvrir.png" />

une fois le fichier sélectionné (double cliq ou cliq + Ouvrir) nous cliquons sur Envoyer :

<img src="/img/bureau_gest_detail_new.png" title="to complete" alt="bureau_gest_detail_new.png" />

et voilà le résultat :

<img src="/img/bureau_gest_detail_new.png" title="to complete" alt="bureau_gest_detail_new.png" />

Revenons à la page du navigateur qui nous affichait Index of / , c'est à dire celle de notre site par défaut (http://www.{bienvenue}.lautre.net) et rechargeons-la :

<img src="/img/LAN_http_www_bienvenue_lautre_net_index.png" title="to complete" alt="LAN_http_www_bienvenue_lautre_net_index.png" />

Voilà, notre page s'affiche.

Récapitulons un peu. 

Nous venons d'ouvrir un compte, {bienvenue}[[Nous rappelons que tout au long de ce document « {bienvenue} » est équivalent à « login » ou « nom_de_votre_compte »]], alors nous avons déjà :
- un nom de domaine : {bienvenue}.lautre.net
- un sous-domaine associé : www.{bienvenue}.lautre.net
- un emplacement tout prêt pour mettre nos pages web : /www/{bienvenue}.lautre.net
- un compte ftp (file transfert protocole) pour échanger des fichiers entre notre espace d'hébergement et notre ordinateur, et associé à « la racine » de notre espace[[Ce répertoire est symbolisé par /]] ;
- une adresse mail associé à notre domaine : {bienvenue}@{bienvenue}.lautre.net ;

Pourquoi aucun utilisateur MySQL, ni aucune base de données, est défini au départ (c'est marqué en rouge dans l'écran d'accueil) :

<img src="/img/gest-fich11.jpg" title="to complete" alt="gest-fich11.jpg" />

Parce que cela n'est pas indispensable : on peut très bien faire un site web sans base de données, et dans ce cas pas la peine de sortir un canon pour tuer une mouche.

Maintenant, si nous voulons :
- utiliser notre domaine par défaut pour faire notre site et
- installer un [CMS->http://fr.wikipedia.org/wiki/Syst%C3%A8me_de_gestion_de_contenu] comme [SPIP->http://www.spip.net/],

le principe reste le même : il suffit de placer les fichiers qui constituent ces systèmes de publication là où nous avons mis pour l'instant un seul fichier : dans  notre espace /www/bienvenue.lautre.net.

Mais pour cela il y a [le reste de la documentation->http://aide.lautre.net/], des listes d'aide, et surtout des membres: vous, moi, tous. **LAutre Net est une association** qui héberge NOS sites web depuis 2001, mais aussi nos emails, ou tout autre service web utile à ses membres.

**Tous les acteurs de lautre.net (trésorerie, technique, courrier...) sont bénévoles.**

Bienvenue parmi NOUS.