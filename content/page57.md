Title: 02. Configuration de Joomla 
Date: 2010-10-30 14:00:54
Category: 14. Installer des logiciels sur lautre.net
Tags: old
Summary:  . 

**Symptôme**

Lors de l'installation vous avez un message du genre :

<quote>Warning: session_start() [function.session-start]: open(tcp://10.0.0.75:11211?persistent=1&weight=1&timeout=1&retry_interval=15/sess_3dac234e0616d277a14e23841d6c3ac5, O_RDWR) failed: No such file or directory (2) in /var/alternc/html/v/votrecompte/joomla/libraries/joomla/session/session.php on line 423</quote>
ou
<quote>Les cookies ne semblent pas être autorisés sur votre navigateur. Il ne sera pas possible d'installer l'application avec cette option désactivée. </quote>

**Solution**

Crééez un répertoire <code>sessions</code> à la racine de votre installation.

Ouvrez le fichier <code>session.php</code> et modifiez le fichier à la ligne 423 (ou 411 depuis la version 1.6)

{Avant}

<quote>session_cache_limiter('none');<br>
session_start();</</quote>

{Après}

<quote>session_cache_limiter('none');<br>
session_save_path('/var/alternc/html/v/votrecompte/sessions');<br>
session_start();</</quote>

La valeur de la ligne rajoutée s'obtient simplement suivant les explications de l'article sur : [Comment connaître le chemin daccès absolu à mon compte ?->53]

Une fois Joomla installé, modifiez de nouveau le fichier <code>session.php</code> pour lui faire reprendre ses valeurs initiales.