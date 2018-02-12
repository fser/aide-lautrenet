Title: 08. Effacer un message des archives 
Date: 2010-10-29 19:42:36
Category: 07. Gestion listes de discussion
Tags: old
Summary:  . 

Vous **ne pouvez pas** effacer des messages dans les archives.

C'est normal, si l'on considère qu'il s'agit de liste de discussion et non de forum. 

Pour effacer, vous auriez besoin d'accéder au fichieer brut de votre archive "mbox", et de regénérer l'archive. Ceci requiert un accès à la ligne de commande sur le serveur Mailman.
Vous aurez donc besoin d'avoir recours aux roots pour effectuer [cette manipulation->http://wiki.list.org/pages/viewpage.action?pageId=4030681].
Cependant, elle n'est pas sans risques :

  -  Le fil de la discussion (thread) sera perturbé : si C est une réponse à B qui est une réponse à A et que B est effacé, C ne sera plus lié à A.
  -  Les messages seront renumérotés, ce qui a un impact important s'il y a des liens sauvegardés vers des messages au sein des archives. Comme le numéro de message est partie intégrante de l'URI, le lien qui a été sauvegardé ne marchera plus ou pointera vers le mauvais message.

Pour éviter ces problèmes, au lieu de demander d'effacer un message entièrement, sans toucher au sujet, demandez à ce que le corps du message soit remplacé par une inscription du type "Message effacé" ou équivalente.


Pour limiter la diffusion des messages, les archives peuvent être privées, visibles uniquement pour les abonnés.

A l'extrême, la liste peut également ne pas être archivée.