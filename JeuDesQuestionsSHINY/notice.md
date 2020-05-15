---
title: "Quizz : Le jeu des Questions !"
author: "Louise ARSAC (*Louise-Arsac*), Axel FALIGOT-GIRARDELLI (*Cynism*), Zélie FROMENT (*zeliefroment*), Charlène LAROCHE (*chalarock*), Juliette MAYER (*Ju49*),  Paul SERVAIN (*greenwasher*)"
date: "13/05/2020"
output:
    html_document:
      fig_caption: yes
      number_sections: yes
      toc: yes
      toc_depth: 3
      toc_float: yes
---




# Principe de l'application

Notre application **Shiny** s'inspire du jeu télévisé "*N'oubliez pas les paroles !*" et fonctionne sur le principe du jeu de questions.
Nous sommes : Louise ARSAC (*Louise-Arsac*), Axel FALIGOT-GIRARDELLI (*Cynism*), Zélie FROMENT (*zeliefroment*), Charlène LAROCHE (*chalarock*), Juliette MAYER (*Ju49*),  Paul SERVAIN (*greenwasher*)

Les caractéristiques de l'application :

* But du jeu : répondre correctement à 5 questions
* Le joueur peut commencer par choisir la catégorie dans laquelle il veut jouer : Paroles de chansons ou Répliques de films
<img src="ChoixCatego.png" title="plot of chunk image1" alt="plot of chunk image1" width="75%" style="display: block; margin: auto;" />
* Une première question est affichée : le joueur doit saisir le numéro de la réponse qui lui semble être la bonne dans la zone prévue à cet effet
<img src="MenuReponses.png" title="plot of chunk image2" alt="plot of chunk image2" width="75%" style="display: block; margin: auto;" />
* Une fois que le joueur est certain de sa réponse, il lui faut cliquer sur le bouton "Valider la saisie" :
  * une nouvelle question s'affiche
  * si la réponse est juste :
    * un point vert s'affiche en bas de l'écran
  * si la réponse est fausse :
    * un point rouge s'affiche en bas de l'écran
* Au fil des questions, les points rouges/verts vont s'aligner de manière à ce que le joueur puisse visualiser le résultat général de ses réponses.
* Le jeu s'arrête au bout de 5 questions et affiche le message: Bravo! Vous avez répondu à toutes les questions !
<img src="FinJeu.png" title="plot of chunk image3" alt="plot of chunk image3" width="75%" style="display: block; margin: auto;" />



# Comment fonctionne l'application ? 

Pour la rédaction du code, nous avons décidé de nous répartir les tâches par sous-groupes, afin de faciliter le travail à distance. Ceci s'est très bien déroulé, et nous nous sommes entraidés mutuellement. 

* Notre appli se base sur un fichier .csv dans lequel nous avons rentré, sous forme de tableau, les questions/réponses ainsi que la valeur VRAI/FAUX de chaque réponse. 
* Lorsque l'application est lancée, 5 lignes du tableau, ce qui correspond à 5 questions, avec leurs réponses, sont sélectionnées au hasard.
* Une variable `input$valeurIndex`, qui correspond au numéro de la ligne de question, va permettre de changer de question. Cette variable vaut 1 au lancement de l'application, puis va augmenter de 1 à chaque fois que le joueur cliquera sur le bouton "valider la saisie" pour passer à la question suivante. 
* Lorsque le joueur clique sur le bouton "Valider la saisie", la valeur saisie par l'utilisateur `input$repUser` est récupérée. Ainsi, les coordonnées de cette réponse seront `(input$valeurIndex,input$repUser)`. Cela va permettre au code de récupérer la valeur VRAI/FAUX associée à la réponse choisie. Ainsi, si la valeur est "VRAI", une image représentant un point vert sera affichée au bas de l'écran, si c'est "FAUX", une image représentant un point rouge sera affichée.

# Liste de différentes fonctionnalités & paramètres qui pourraient être améliorés

* Jouer à deux sur ce jeu nécessite de créer 2 interfaces et de bloquer les boutons du joueur qui ne joue pas, ce que nous n'avons pas réussi à faire.
* Bloquer l'accès à l'onglet "Paramètres", pour empêcher le joueur de les modifier, ce qui peut entraîner le disfonctionnement de l'application.
* Associer les scores obtenus aux quizz avec les caractéritisques des utilisateurs (Prénom,Nom,Age,Sexe) dans le csv qui est généré.
* Avec ces scores enregistrés, faire des statistiques sur :
  * les joueurs et les joueuses
    * qui donne le plus de bonnes réponses ?
  * les questions
    * quelle réponse est la plus connue / juste le plus souvent ?
    * quelle réponse est la moins connue / fausse le plus souvent ?

* Pouvoir rejouer sans avoir à relancer l'appli.

* Avoir un système de points cumulés.

# Autres utilisations possibles de notre application

Nous avons fait le choix de remplir le fichier .csv avec des paroles de chansons pour rendre notre application ludique. Mais on peut compléter ce fichier avec d'autres éléments et ainsi multiplier les solutions d'utilisation de notre application : 

* Paroles de chansons
  * Si vous aimez chanter (comme vu ci-dessus)
* Répliques de films
  * Pour les plus cinéphiles
* Code de la route
  * Pour les autos-écoles
* Questions de culture générale
  * Pour s'amuser en famille pendant le confinement
* Questions de cours
  * Pour les profs adeptent de R-Shiny
* ...

Ainsi on trouverait dans la liste déroulante les différentes catégories cités ci-dessus, comme c'est déjà le cas pour les catégories "Paroles de chansons" et "Répliques de films".

La même application peut présenter un onglet par "jeu".

# Rédaction du code 

* Le but de la première partie a été de créer un code afin d'enregistrer les données des deux utilisateurs, nommées respectivement joueur 1 et joueur 2.Ils pourront par la suite jouer au Quizz que nous leurs proposons.
  Nous avons donc défini les deux joueurs avec les caractéristiques suivantes : prénom, nom de famille, âge, nationalité, profession et le sexe de l'utilisateur. Une fois ces données complétées, elles seront affichées directement dans un tableau récapitulatif et pourront être récupérées dans un fichier à part.
  
  
  Bon Jeu !


