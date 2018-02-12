Title: 02. Panneau Administrateur 
Date: 2009-03-10 15:34:27
Category: 09. Administration des comptes AlternC
Tags: old
Summary: Quelques prérogatives spécifiques à l'administrateur de comptes AlternC. . 

<img src="/img/menu_pave_admin_pt.png" title="to complete" alt="menu_pave_admin_pt.png" /> Ce panneau, spécifique à ladministrateur des comptes AlternC, donne accès à un panel dactions pour la gestion du serveur.

<img src="/img/adm_panneau_adm.png" title="to complete" alt="adm_panneau_adm.png" />

Nous vous proposons trois exemples 

## Gestion des TLD autorisés

<img src="/img/adm_tld_gest_court-2.png" title="to complete" alt="adm_tld_gest_court-2.png" /> Un TLD (Top Level Domain) est un domaine de premier niveau : .fr, .net, .org ... sont des domaines de premier niveau.

Le fait de vérifier les DNS dans le WHOIS mondial évite l'installation fantaisiste de domaines n'existant pas et qui ne fonctionneront pas !

Il est toutefois pratique de pourvoir changer le mode de contrôle. C'est important pour certains TLD.

{ATTENTION : le TLD .fr doit être installé sur le serveur avant d'être acheté. Il faut donc autoriser son installation sans contrôle dans le Whois.}

Pour changer la gestion d'un TLD il suffit de cliquer sur l'icône crayon à côté de son nom, comme le montre l'exemple ci-dessous.

<img src="/img/adm_tld_modif.png" title="to complete" alt="adm_tld_modif.png" />

Il est également possible de créer de nouveaux TLD (mot impropre ic i puisqu'il s'agit de donner à un nom de domaine de second niveau les prérogatives d'un  nom de domaine de premier niveau sur le serveur concerné.

<img src="/img/adm_tld_creer.png" title="to complete" alt="adm_tld_creer.png" />
Dans cet exemple, tous les sous-domaines en logiciels-libres.biz peuvent être installés sans contrôle préalable, ce qui est indispensable puisqu'il s'agit d'un sous-domaine et non d'un domaine acheté chez un registrar. Bien évidemment, le domaine doté des droits de TLD doit lui-même être installé sur le serveur auparavant.


## Changer les quotas par défaut

Chaque compte AlternC dispose de  fonctionnalités telles que définies par l'administrateur AlternC.

Un clic sur le lien«{ Changer les quotas par défaut}» dans le «{Panneau Administrateur}» nous informe des quotas attribués automatiquement aux nouveaux comptes créés.
<img src="/img/adm_chang_quotas.png" title="to complete" alt="adm_chang_quotas.png" /> 

Il est possible de permettre à l'administrateur de comptes AlternC de choisir entre plusieurs types de quotas.

<img src="/img/adm_chang_quotas1.png" title="to complete" alt="adm_chang_quotas1.png" /> Nous allons par exemple créer le type de compte qui sera afffecté d'un quota Mini.

<img src="/img/adm_chang_quotas2.png" title="to complete" alt="adm_chang_quotas2.png" />
Voici le résultat : nous avons  deux types de comptes, l'un nommé « default » (le type générique installé par défaut dans AlternC)  et l'autre nommé « Mini ».

## Liste des domaines installés sur le serveur

<img src="/img/adm_list_dom.png" title="to complete" alt="adm_list_dom.png" /> Ce lien affiche l'ensemble des domaines installés sur le serveur en précisant le compte auquel ils sont liés.

Le verrouillage du domaine interdit sa migration vers un autre compte ou serveur. Ce verrouillage peut également éviter de fausses manipulations de la part d'un gestionnaire de compte (ici, cas du compte chantal).

{Attention : ne pas confondre le verrouillage d'un nom de domaine et celui d'un compte, [voir Modification d'un compte->art19]} 


## A manipuler avec précaution, voire pas du tout !

{Gérer les ip autorisés à faire des transferts de zone esclave DNS}

{Gérer les comptes autorisés pour les transferts de zone esclave DNS}

L'utilisation de ces 2 liens du panneau administrateur nécessite des connaissances en administration système. Il s'agit de la communication entre le serveur, les serveurs de DNS et de sauvegarde.

Il est prident d'en laisser la complète gestion à l'administrateur système (**root**) du serveur, sous peine dêtre confronté à de graves dysfonctionnements !

## Configurer les variables d'AlternC
A partir de ce lien, si vous indiquez un nom de domaine dont vous êtes propriétaire (exemple NomDeDomaine.tld), tout nouveau compte AlternC créé par vos soins, peut être assorti automatiquement d'un sous-domaine de type LoginDuCompte.NomDeDomaine.tld.

{Exemple}, pour le nom de domaine structure.fr peuvent être créés : atelier.structure.fr, mjc.structure.fr, filiale.structure.fr .... qui à leur tour peuvent bénéficier de sous-domaines (exemple : congres.filiale.structure.fr ...)

## Montrer tous les quotas
Un clic sur ce lien affiche les quotas utilisés/octroyés  pour l'ensemble des comptes.

En fait il fait un peu double emploi avec le lien « {Quotas utilisateurs} » que nous avons vu précedemment... en moins convivial !

