# emploi-nc-website

Site web de emploi-nc.

URL publique: https://adriens.github.io/emploi-nc-website/

## Instalation HUGO

https://gohugo.io/getting-started/installing

## Generation site statique 

`hugo`

Génère le site statique dans le répertoire public

## Développement

Lancement du server local :

`hugo server -D`

### Modification des données

#### Fichiers Data/[nomdata].yaml

Vous pouvez modifié directement les données à partir de fichier de "config". 

Pour les toutes les données sauf A propos.

Pour A propos modifier le fichier about.html et/ou config.toml.

```
[params.about]
    enable = true
    title = "A Propos"
    text = """ Nous développons actuellement une application mobile qui permettra 
    aux calédoniens de consulter des offres emplois où qu'ils soit. Nous pensons que ..."""
```

##### Modification de données

Par exemple dans data/team vous avez tous les collaborateurs, chaque fichier représente un collaborateur.
Pour modifier leurs noms il suffit de modifier le paramètre nom.

```
nom: "BoB"
```

Code HTML accepté.

##### Suppression de données

Si vous par exemple supprimer uun collborateur de la page il suffit de supprimer son fichier associé.

Si vous voulez supprimez un champs mettez le vide.

###### Ajout de données

Si vous voulez ajouter un collaborateur créer un fichier et renseigner tous les paramètres.

Vous pouvez ajouter un champs en faisait dans un fichier .yaml :

```
newChamp: ""
```

Si vous voulez créer une entité :

1/2 - Renseigné la dans le fichier config.toml

```
[params.entity]
  enable = true
```

2/2 - Créé le fichier data/entity/nameData.yaml
