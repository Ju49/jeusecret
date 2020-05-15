---
title: "Quizz : N'oubliez pas les paroles !"
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

Les caractéristiques de l'application :

* But du jeu : obtenir 5 points
* Nombre de joueur·se·s : 2
* L'application affiche une phrase de chanson et propose 4 réponses. 
* On ne peut cocher qu'une seule réponse
  * 1 réponse juste vaut 1 point
  * 1 réponse fausse vaut 0 point
* Les points sont enregistrés à chaque tour

## La partie des statistiques
Des statistiques peuvent être effectuées sur :

* les questions
  * quelle réponse est la plus connue / juste le plus souvent ?
  * quelle réponse est la moins connue / fausse le plus souvent ?
* les joueurs et les joueuses
  * qui donne le plus de bonnes réponses ?

## Autres utilisations possibles de notre application

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

La même application peut présenter un onglet par "jeu".

# Rédaction du code 


