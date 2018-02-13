# Comment ça marche la génération du site?

Toutes les heures, un script est invoqué pour mettre à jour le site aide.lautre.net.
L'arborescence est la suivante:

 * ./
   * build.sh
   * pelican (le virtualenv)
   * aide-lautre.net (ce dépôt)
   * site (les sources de pelican)

## Virtualenv

Pour avoir un contexte d'exécution reproductible, on utilise un virtualenv.
Dans ce virtualenv, on installe pelican. Voici ce que ça donne chez lautre.net:

```
(pelican) $ pip freeze  
Jinja2==2.9.6
Markdown==2.6.9
MarkupSafe==1.0
Pygments==2.2.0
Unidecode==0.04.21
argparse==1.2.1
blinker==1.4
docutils==0.14
feedgenerator==1.9
pelican==3.7.1
python-dateutil==2.6.1
pytz==2017.2
six==1.10.0
wsgiref==0.1.2
```

## Pelican

L'installation se fait tout simplement via pip: `pip install pelican` dans le virtualenv.
Ensuite, on fait pointer le dossier content vers le dépôt git: `rm -rf content ; ln -s ../aide-lautre.net content`.
On peut également ajouter les thèmes. Pour cela, on clône le dépôt des thèmes de pélican: https://github.com/getpelican/pelican-themes.git

