
# Documentation de l'Application

Cette documentation décrit le fonctionnement de l'application **Namer**. Namer est une application Flutter qui génère des paires de mots aléatoires et permet aux utilisateurs de les ajouter aux favoris. L'application maintient également un historique des paires de mots générées.

## Démo
Vous pouvez tester l'application sur ce lien :
https://via2ney.github.io/codelabGoogle-Namerapp/

## Structure du Projet

L'application est structurée de la manière suivante :

- **lib/**: Contient tous les fichiers sources de l'application.
  - **pages/**: Contient les pages principales de l'application.
  - **provider/**: Contient la classe `MyAppState` qui gère l'état global de l'application.
  - **widget/**: Contient les widgets réutilisables utilisés dans l'interface utilisateur.
- **main.dart**: Point d'entrée de l'application.

## Pages Principales

- **MyHomePage**: Page principale de l'application. Permet à l'utilisateur de naviguer entre la page de génération de mots et la page des favoris.
- **GeneratorPage**: Affiche la paire de mots actuelle et permet à l'utilisateur de générer une nouvelle paire de mots ou d'ajouter la paire actuelle aux favoris.
- **FavoritesPage**: Affiche toutes les paires de mots favorites de l'utilisateur et permet de les gérer.

## Principales Classes et Méthodes

- **MyAppState**: Classe qui gère l'état global de l'application.
  - `current`: Paire de mots actuelle.
  - `history`: Historique des paires de mots générées.
  - `favorites`: Liste des paires de mots favorites.
  - `getNext()`: Génère une nouvelle paire de mots et met à jour l'historique.
  - `toggleFavorite()`: Ajoute ou supprime une paire de mots des favoris.
  - `removeFavorite()`: Supprime une paire de mots des favoris.
- **BigCard**: Widget qui affiche une paire de mots dans une carte stylisée.
- **HistoryListView**: Widget qui affiche l'historique des paires de mots générées dans une liste animée.

## Installation et Exécution
1. Cloner le dépôt GitHub sur votre machine locale.
2. Ouvrir le projet dans votre éditeur de code préféré.
3. Exécuter `flutter pub get` pour installer les dépendances.
4. Lancer l'application en utilisant `flutter run`.

## Contribution
Les contributions au projet sont les bienvenues ! Voici comment vous pouvez contribuer :
- Créez une "issue" pour signaler un bogue ou demander une fonctionnalité.
- Proposez des modifications en ouvrant une "pull request".