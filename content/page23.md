Title: 07. Annexes 
Date: 2009-03-10 07:24:54
Category: 07. Gestion listes de discussion
Tags: old
Summary: Commandes pour obtenir par mail des informations sur vos abonnements aux listes Mailman en modifier les options. . 

## Utilisation
Ceci est l'aide sur les commandes par courrier pour la version 2.1.5 du gestionnaire de listes "Mailman".  Vous trouverez ci-dessous la description des commandes qui vous permettent d'obtenir des informations sur vos abonnements et d'en modifier les options pour les listes de ce serveur. 
_ Les commandes doivent être envoyées par mail à l'adresse 
_ NomDeLaListe-request@NomDeDomaine
_ Par exemple pour la liste utilisée dans les exemples :« info », utilisez 
« info-request@aide-alternc.org ». 
_ Chaque commande peut être placée au choix dans l'objet ou dans le corps du message. 
  
La plupart de ces commandes peuvent être également accomplies par l'interface web qui se trouve à l'adresse:
_    http://NomDeDomaine/cgi-bin/mailman/listinfo/NomDeLaListe
_ Vous pouvez notamment utiliser cette interface pour vous faire envoyer votre mot de passe à votre adresse d'abonné. 

{A propos des descriptions -  les mots entre « <> » sont les éléments OBLIGATOIRES tandis que ceux entre « [ ] » sont des éléments FACULTATIFS. 
N'incluez pas les « <> » ou « [ ] » dans les commandes.}


## Liste des commandes
 
**confirm <chaîne-de-confirmation>**
_ Confirmer une action. La chaîne-de-confirmation est requise et doit être fournie par un courriel de confirmation.

**end**
_ Arrête le traitement des commandes. Utiliser ceci si votre logiciel de messagerie ajoute automatiquement un fichier signature.

**help**
_ Affiche la présente liste de commandes.

**info**
_ Renvoie des informations à propos de cette liste de diffusion.

**lists**
_ Renvoie la liste des listes de diffusion publiques sur ce serveur GNU Mailman.

**password [<ancien_passe> <nouveau_passe>] [address=<adresse>]**
_ Récupérer ou changer votre mot de passe. Sans arguments, cette commande renvoie votre mot de passe actuel.
_ Avec <ancien_passe> et <nouveau_passe> comme arguments, elle change votre mot de passe.

Si vous envoyez un message à partir d'une adresse différente de votre adresse d'abonnement, spécifier votre adresse avec « address=<adresse> » (sans les signes < et > autour de l'adresse et sans guillemets !). Notez que dans ce cas, la réponse est toujours envoyée à l'adresse abonnée.


**set ...**
_ Modifier ou visualiser vos options d'abonné.
Utilisez « **set help** » (sans les guillemets) pour avoir une liste plus détaillée des options que vous pouvez modifier.
Utilisez « **set show** » (sans les guillemets) pour voir vos options actuelles.

**subscribe [passe] [digest|nodigest] [address=<adresse>]**
_ S'abonner à cette liste de diffusion. Votre mot de passe doit être fourni pour résilier votre abonnement à cette liste ou pour modifier vos options, si vous l'omettez, le système vous en générera un. Votre mot de passe pourra vous être rappelé périodiquement.

_ Le prochain argument peut être l'une des options « nodigest » ou « digest » c'est à dire réception des messages au fur et à mesure de leur envoi ou groupés une fois par jour, par semaine ...(attention, toujours sans guillemets !).
_ Si vous souhaitez abonner une adresse autre que celle à partir de laquelle vous envoyez cette requête, précisez-le avec « address=<adresse> » (sans les signes < et > autour de l'adresse et sans guillemets!)

**unsubscribe [passe] [address=<adresse>]**
_ Résilier son abonnement à la liste de diffusion. Lorsqu'il est fourni, votre mot de passe doit correspondre à votre mot de passe actuel. Lorsqu'il est omis, un courriel de confirmation sera envoyé à l'adresse à supprimer. Si vous souhaitez résilier l'abonnement d'une adresse différente de l'adresse à partir de laquelle vous envoyez ce message, vous pouvez le spécifier avec « address=<address> » (sans les signes < et > autour de l'adresse et sans guillemets!)

**who passe [address=<adresse>]**
_ Lister les abonnés de la liste. L'afficheur se limite à l'affichage des abonnés, et vous devez fournir votre mot de passe d'abonné pour avoir cette liste. Si vous envoyez ce message à partir d'une adresse différente de votre adresse d'abonnement, vous pouvez le spécifier avec « address=<adresse> » (sans les signes < et > autour de l'adresse et sans guillemets !)



