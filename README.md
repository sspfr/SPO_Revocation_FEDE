Lettre de révocation FEDE
=========================
Modèle de lettre pour demander au SPO la révocation de la cotisation à la FEDE

But
---
Le script produit trois documents:

### Lettre SPO
Une lettre d'accompagnement expliquant les raisons de la demande.

### Formulaire
Une copie du formulaire, à remplir à la main.
C'est le document officiel.

### Lettre FEDE
Une copie de la lettre d'accompagnement pour la FEDE.
Il est quand même intéressant de leur signifier notre désapprobation.


Fonctionnement
--------------
Il faut créer un fichier texte avec la commande :
	> make new
et renommer le fichier créé (il est important de laisser l'extention \*.tmp.tex
pour que le fichier contenant les données personnelles ne soit pas intégré à
GIT).

Éditez le fichier pour introduire les données personnelles.

Tapez la commande :
	> $ make 
pour produire les fichiers.

Le PDF se trouve dans le sous-dossier out/


Outil
-----
* GIT
* Vim
* make
* bash
* pdflatex
* La classe lettre de l'Observatoire de Genève


Workflow
--------
J'utilise git flow pour ce dépôt, avec comme modification:
* stable = master = Branche toujours fonctionnelle
* master = develop = branche de développement en cours

