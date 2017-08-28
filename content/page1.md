Title: 02. AlternC 
Date: 2009-02-25 18:24:46
Category: 15. A propos
Tags: old
Summary: Logiciels, sécurité, communauté... . 

## Logiciels

AlternC fait dialoguer divers logiciels  entre eux, voici une liste non exhaustive de ceux-ci, ce sont tous des logiciels sous licence libre.

  -  Apache         Serveur Web (pages http)
  -  Postfix        Serveur Smtp (courrier électronique)-* 
  -  Proftpd        Serveur Ftp (transfert de fichiers)
  -  Bind9          Serveur Dns (noms de domaine)
  -  Mailman        Serveur de listes de discussion
  -  Mysql          Serveur de bases de données
  -  Php4/Php5      Langage de contenu dynamique
  -  PhpMyAdmin     Interface web de gestion de données
  -  Squirrelmail   Interface web de lecture de mail
  -  Awstats        Statistiques web
  -  Courier Suite  Serveur pop, pops, imap, imaps

## Sécurité

  -  ssl tls (http, pop, imap, smtp) pour garantir la sécurité et confidentialité des données utilisateurs. 
  -  Gestion du problème de la sécurité locale, problème principal de l'hébergement mutualisé : sécurité de la machine et séparation des données des utilisateurs. 
  -  Veille de sécurité sur les paquets Debian
  -  Veille de sécurité pour AlternC lui-même : Les utilisateurs d'AlternC sont vigilants, et en cas de faille, ils sont prévenus immédiatement, et profitent des patchs avant leur publication officielle. 
  -  Différents niveau d'administration : 
  - * le « root ssh » qui est l'administrateur technique final, celui qui dialogue en « ligne de commande » avec le serveur, 
  - * l'« admin AlternC », administrateur des comptes AlternC, qui utilise l'interface web pour créer des comptes d'hébergement,
  - * le « gestionnaire d'un compte AlternC », qui gère les mails, ftp, fichiers, domaines du compte... 

Seul le « root ssh » doit être informaticien

Un niveau supplémentaire : les vservers Linux
Le serveur averroes utilise le contexte context switching des noyaux Linux récents, ce qui permet de séparer l'architecture serveur de la gestion des comptes et donc de renforcer la sécurité.

## Communauté
AlternC est un projet libre.
Une communauté d'utilisateurs et développeurs le fait vivre.

## Spécificités
Nous soulignerons ici deux spécificités essentielles

- Une gestion de comptes accessible aux non-informaticiens ;
- Un souci de la sécurité : AlternC est une rare architecture qui offre, en natif, un service de mails (pop, imap, webmail) sécurisé.

## Avertissement
Ce fascicule a une vocation didactique.

Il propose la découverte des fonctionnalités du bureau virtuel AlternC en suivant une progression logique.

Il s'adresse à un public ayant quelques connaissances dans le domaine d'Internet, sans être pour autant informaticien.

Il n'a pas vocation à remplacer une formation sur des logiciels complets et complexes :

  -  Mailman
  -  Squirrelmail
  -  MySQL
  -  Awstats

Ni, bien évidemment

  -  Apache
  -  Postfix
  -  Php

Nous conseillons à ses lecteurs de suivre la progression tout en effectuant les manipulations expliquées.
