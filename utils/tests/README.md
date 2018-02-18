## Installation d'un environement d'édition local

### Prérequis
  * Un éditeur de texte (par exemple gedit, atom ou autre)
  * Python (en standard sur toute les bonnes distributions Linux)
  * pip (installable via )

### Installation de l'environement
  * Création d'un virtualenv
```
virtualenv ~/virtenv/pelican
source ~/virtenv/pelican/bin/activate
```
  * Ensuite aller dans votre répertire de travail (par exemple ~/git) et cloner le dépot github
`git clone https://github.com/fser/aide-lautrenet.git`
  * Installation des packages
`pip install -r `

### Génération des fichiers HTML

  * Installer le répertoire de thème de pelican
`https://github.com/getpelican/pelican-themes.git`
  * Générer le projet
```
pelican content -s utils/test/conf.py
```
