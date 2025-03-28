# TimeScanner Website

Ce site web est construit avec Jekyll et Tailwind CSS.

## Prérequis

- Node.js (v14 ou supérieur)
- Ruby (v2.7 ou supérieur)
- Jekyll

## Installation

1. Installer les dépendances Node.js :
```bash
npm install
```

2. Installer les dépendances Ruby :
```bash
bundle install
```

## Développement

1. Lancer le build de Tailwind en mode watch :
```bash
npm run build:css
```

2. Dans un autre terminal, lancer le serveur Jekyll :
```bash
bundle exec jekyll serve
```

Le site sera accessible à l'adresse : http://localhost:4000

## Build de production

Pour construire le site pour la production :

```bash
npm run build:css
bundle exec jekyll build
```

Les fichiers générés seront dans le dossier `_site`.
