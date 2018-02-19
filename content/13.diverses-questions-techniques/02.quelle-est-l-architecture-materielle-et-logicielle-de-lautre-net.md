Title: 02. Quelle est l'architecture matérielle et logicielle de L'Autre Net ? 
Date: 2010-10-29 21:15:58
Category: 13. Diverses questions techniques
Tags: old
Summary:  . 

## Architecture Logicielle de L'Autre Net 


https://aide.lautre.net/attachment/wiki/TrucsEtAstuces/Misc/Schema/SchemaArchiLautre.png?format=raw

**Services utilisés** <img src="/img/ndd_zonedns.jpg" title="to complete" alt="ndd_zonedns.jpg" />

**Les serveurs en production de L'Autre Net sont architecturés ainsi :**

- Eva est le répartiteur de charge qui utilise LVS (Linux Virtual Server) pour répartir la charge web et mail sur emma et ella, et la charge https sur elsa. Elle sert aussi de routeur OSPF en utilisant le logiciel Quagga pour nous router sur Gitoyen, donc sur Internet. 
- Estelle est le répartiteur de charge de secours. Il fait la même chose que eva, mais est éteint par défaut. Il n'entre en fonction qu'en cas de crash sur eva. 
- Emma et Ella sont 2 machines strictement identiques : ce sont des bixeons qui servent les requêtes http (web), mail (mx, pop, imap, smtp relay). Les applications PHP ainsi lancées se connectent au MySQL sur elea. Ils montent plusieurs dossiers en nfs sur fey pour disposer de données partagées entre eux. 
- Elea est un serveur dédié à MySQL. seul mysql tourne sur cette machine. 
- Elsa est le serveur mailman, qui reçoit les mails envoyés aux listes et les redistribue, et sert aussi le bureau AlternC http et https (c'est donc panel.lautre.net). Elle accède donc à elea en MySQL et à fey en NFS. 
- Fey est le serveur de fichier NFS, qui sert à emma, ella, et elsa les fichiers de /var/alternc/*. Ces fichiers sont dans /data/elsa_nfs sur fdey. Il sert aussi de backups, qui sont incrémentaux, avec snapshot quotidiens et stockés dans /backups. 

**Les serveurs en attente de mise en production de L'Autre Net sont architecturés ainsi :**

- Eyra, etna : deux serveurs sun sunfire v220 destiné a gerer les MX et relais SMTP pour les abonnés
- Defi : chargé de remplacer fey a échéance (nouveau filer) + baie de 14 disques
- Elma : service non défini a l'heure actuelle
- Elga : machine de vserver chargée d'héberger notamment trac, svn, rt etc .... 

**Les équipements supplémentaires :**

- ada : switch interco publique (service)
- facteur : switch interco privé (admin)
- apc : service de prise electrique controlé (APC)
- console : serveur de port série. 

**Logiciels utilisés** 

Les logiciels utilisés principalement sur les machines sont :

- eva et estelle : LVS (appellé aussi IPVS), Keepalived
- emma et ella : Apache, Php4, Postfix, Courier-Imap, Courier-Pop, Pop-before-smtp
- elsa : AlternC, Apache, Apache-ssl, Mailman, Postfix, Webalizer, Awstats
- fey : NFSD, Rsync
- elea : MySQL, MySQLDump 

Emplacement des équipements dans la baie, face avant :

<img src="/img/ndd_zonedns.jpg" title="to complete" alt="ndd_zonedns.jpg" />