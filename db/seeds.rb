# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
#
#
#
#
require 'json'

ACTIVITE1 =
    [
    "OSER PARLER : Je parle en faisant des phrases simples (sujet, verbe, complement)",
    "OSER PARLER : je précise et j'articule correctement",
    "COMPRENDRE ET APPRENDRE : Je sais dire des comptines et des poèmes en prononçant correctement",
    "OSER PARLER : Dire de mémoire et de manière expressive plusieurs comptines et poésies.",
    "COMPRENDRE ET APPRENDRE : Je comprend une consigne donnée de manière collective.",
    "COMPRENDRE ET APPRENDRE : J'écoute les autres quand ils parlent.",
    "COMPRENDRE ET APPRENDRE : Je raconte et j'explique un événement inconnu des autres",
    "COMPRENDRE ET APPRENDRE : Je comprends une histoire et je la raconte avec l'aide d'image.",
    "COMPRENDRE ET APPRENDRE : Comprendre des consignes complexes données de manière collective.",
    "COMPRENDRE ET APPRENDRE : Acquérir et utiliser un vocabulaire pertinent.",
    "ECHANGER ET REFLECHIR AVEC LES AUTRES : Pratiquer divers usages du langage : raconter.",
    "ECHANGER ET REFLECHIR AVEC LES AUTRES : Pratiquer divers usages du langage : questionner.",
    "ECHANGER ET REFLECHIR AVEC LES AUTRES : Pratiquer divers usages du langage : discuter un point de vue.",
    "JOUER AVEC LES SONS DE LA LANGUE : Je sais frapper des syllabes de mots connus.",
    "JOUER AVEC LES SONS DE LA LANGUE : je repère des syllabes identiques.",
    "JOUER AVEC LES SONS DE LA LANGUE : Comparer et localiser des syllabes.",
    "JOUER AVEC LES SONS DE LA LANGUE : Ajouter, supprimer, inverser des syllabes.",
    "Je sais parler à l'adulte.",
    "Je sais parler à mes camarades.",
    "J'utilise 'JE' pour parler de moi.",
    "Je sais dire à la maîtresse ce qu'il faut écrire."
]

ACTIVITE2 = [
    "ECOUTER DE L'ECRIT ET COMPRENDRE : J'écoute en silence des histoire de plus en plus longues.",
    "ECOUTER DE L'ECRIT ET COMPRENDRE : Je reconnais des éléments de l'histoire.",
    "ECOUTER DE L'ECRIT ET COMPRENDRE : Comprendre des textes écrits sans autre aide que le texte entendu.",
    "DÉCOUVRIR LA FONCTION DE L'ECRIT : Je sais reconnaître les différents supports d'écrits de la classe (livre, affiche, recette, documentaire, etc...)",
    "DÉCOUVRIR LE PRINCIPE ALPHABÉTIQUE : Je reconnais quelques lettres de l'alphabet en majuscules",
    "DÉCOUVRIR LE PRINCIPE ALPHABÉTIQUE : Reconnaître les lettres de l'alphabet.",
    "DÉCOUVRIR LE PRINCIPE ALPHABÉTIQUE : Faire correspondre lettres cursives, scriptes et majuscules.",
    "DÉCOUVRIR LE PRINCIPE ALPHABÉTIQUE : Discriminer des sons consonnes.",
    "DÉCOUVRIR LE PRINCIPE ALPHABÉTIQUE : Discriminer des sons voyelles.",
    "COMMENCER A ECRIRE TOUT SEUL : Je me tiens correctement pour écrire.",
    "COMMENCER A ECRIRE TOUT SEUL : Je tiens correctement l'outil scripteur.",
    "COMMENCER A ECRIRE TOUT SEUL : Je sais écrire des mots simples en majuscules.",
    "COMMENCER A ECRIRE TOUT SEUL : Je sais écrire mon prénom en majuscules, sans le modèle.",
    "COMMENCER A ECRIRE TOUT SEUL : Enchaîner plusieurs lettres en écriture cursive pour écrire des mots, phrases.",
    "COMMENCER A ECRIRE TOUT SEUL : en utilisant des lettres ou des groupes de lettres empruntées aux mots connus."
]
ACTIVITE3 = [
    "Je sais courir dans un but précis (espaces et matériels variés).",
    "Je sais sauter de différentes façons.",
    "Je sais lancer de différentes façons.",
    "Je sais m’équilibrer, rouler, grimper pour réaliser les parcours de l'école.",
    "Je sais me déplacer sur un engin roulant (vélo, trottinette, ...).",
    "J'accepte de participer aux jeux collectifs en respectant les règles du jeu.",
    "Je participe et je sais jouer différents rôles dans un jeu collectif.",
    "Je sais me déplacer sur un tempo.",
    "Je sais me déplacer en milieu aquatique sans appréhension.",
    "Je sais m'opposer dans un contact de corps à corps (saisir, tirer, pousser, immobiliser)."
]

ACTIVITE4 = [
    "Je réalise une composition en reproduisant des graphismes.",
    "Je dessine pour représenter.",
    "Je chante avec la classe.",
    "Je mémorise plusieurs chants et les interprète de façon expressive.",
    "Je sais reproduire un rythme simple.",
    "Je sais nommer les instruments de musique et je reconnais leur son.",
    "Pratiquer quelques activités des arts du spectacle.",
    "J'exprime avec mon corps des images, personnages, sentiments."
]

ACTIVITE5 = [
    "Je sais comparer des tas d'objets en comptant ou non.",
    "Je reconnais les petites quantités jusqu'à 6 (dé et main)",
    "Je récite la comptine jusqu'à 12.",
    "Je récite la comptine jusqu'à 30 ou plus.",
    "Je sais lire les nombres jusqu'à 6.",
    "Je sais lire les nombres jusqu'à au moins 10.",
    "Je sais résoudre de petits problèmes de quantité.",
    "Je sais décomposer les nombres jusqu'à 3.",
    "Je sais décomposer les nombres jusqu'à 5.",
    "Je sais décomposer les nombres jusqu'à 10.",
    "Je sais s'il y a plus ou moins d'objets.",
    "Je sais réaliser un tas d'objet de la même quantité qu'un autre tas.",
    "Je récite la comptine jusqu'à 6.",
    "Je sais lire le nombre jusqu'à 3.",
    "Je sais dénombrer jusqu'à 6.",
    "Je sais dénombrer jusqu'à 10.",
    "Je sais dénombrer jusqu'à 20."
]

ACTIVITE6 = [
    "Je sais trier les objets (consigne).",
    "Je reconnais le rond, le carré, le triangle et je les nomme.",
    "Je reconnais et nomme le rond, le carré, le triangle et le rectangle.",
    "Je reconnais et nomme le rond, le carré, le rectangle, l'ovale et tous les triangles.",
    "Je sais ranger au moins 4 objets par ordre de grandeur.",
    "Je sais ranger au moins 5 objets par ordre de grandeur.",
    "Je sais reproduire des suites simples de formes et de couleurs.",
    "Je sais reconnaître un rythme et le continuer.",
    "Je sais inventer des rythmes de plus en plus complexes.",
    "Je sais compléter des manques dans une suite organisée.",
    "Je reconnais quelques solides (cube, pyramide, boule, cylindre).",
    "LES FORMES : Je réalise un puzzle d'au moins 20 pièces.",
    "Je sais reproduire un assemblage de forme.",
    "Je sais classer ou ranger des objets selon leur masse.",
    "Je sais faire des puzzles, des pavages et des tangrams."
]

ACTIVITE7 = [
    "Je sais mettre en ordre 3 moment de la journée.",
    "Je sais mettre en ordre 3 images d'une histoire connue.",
    "Je sais mettre en ordre 5 moments de la journée.",
    "Je sais remettre en ordre 4 images d'une histoire connue.",
    "Je sais dire la succession des jours.",
    "Je sais retrouver le jour d'hier ou de demain.",
    "Je sais remettre en ordre 5 images d'une histoire inconnue.",
    "Je sais utiliser entre, sur, sous, à l'extérieur,... pour dire où se trouve l'objet.",
    "Je sais dire où se trouve un objet par rapport à moi : à droite, à gauche, ...",
    "Je sais suivre un trajet à partir de sa représentation.",
    "Je connais les différentes parties de mon corps.",
    "Je connais le nom des articulations sur mon corps ou sur une représentation.",
    "Je sais ordonner les images de développement d'un animal ou d'une plante.",
    "Je sais nommer les couleurs primaires.",
    "Je sais nommer les couleurs ainsi que les nuances.",
    "Je colle proprement.",
    "Je tiens mes ciseaux et je découpe correctement en suivant une ligne.",
    "Je sais découper en suivant un tracé arrondi.",
    "Je connais les risques de l'environnement familier proche.",
    "Je sais utiliser la souris de l'ordinateur."
]

ACTIVITE8 = [
    "Je respecte les autres et les règles de l'école.",
    "J'écoute mes camarades, je les aide et je coopère.",
    "Je demande de l'aide si j'en ai besoin.",
    "J'ose essayer ou réaliser seul un travail et parler en grand groupe.",
    "Je sais rester calme pour travailler, ne pas m’énerver, pleurer ou bouder.",
    "Je sais faire mon travail seul.",
    "Quand j'ai fini un jeu ou un travail, je range le matériel.",
    "je sais m'habiller seul (manteau, chaussures) et prendre soin de mes affaires."
]

=begin
Enfant.destroy_all
User.destroy_all



u = User.new(nom: 'Jonquieres', prenom: 'magali', email: 'mj@test.fr', password: '000000')
u.save!
20.times do
  e = Enfant.new
  e.prenom = Faker::Name.first_name
  e.nom = Faker::Name.last_name
  e.groupe = ['A','B','C'].sample
  e.emails = Faker::Internet.email
  e.ddn = Faker::Date.between(from: 4.year.ago, to: 3.year.ago)
  e.sexe = ['G','F'].sample
  e.user = u
  e.save!
  puts e.nom
end



Categorie.destroy_all
Activite.destroy_all


c = Categorie.create(nom: "Mobiliser le langage dans toutes les dimensions : l'oral")
ACTIVITE1.each do |act|
    Activite.create(nom: act, categorie: c)
    puts act
end
c = Categorie.create(nom: "Mobiliser le langage dans toutes les dimensions : l'écrit")
ACTIVITE2.each do |act|
  Activite.create(nom: act, categorie: c)
end
c = Categorie.create(nom: "Agir, s'exprimer, comprendre à travers l'activité physique")
ACTIVITE3.each do |act|
  Activite.create(nom: act, categorie: c)
end
c = Categorie.create(nom: "Agir, s'exprimer, comprendre à travers les activités artistiques")
ACTIVITE4.each do |act|
  Activite.create(nom: act, categorie: c)
end
c = Categorie.create(nom: "Construire les premiers outils pour structurer sa pensée : utilisation et étude du nombre")
ACTIVITE5.each do |act|
  Activite.create(nom: act, categorie: c)
end
c = Categorie.create(nom: "Construire les premiers outils pour structurer sa pensée : les formes, les grandeurs et les suites logiques")
ACTIVITE6.each do |act|
  Activite.create(nom: act, categorie: c)
end
c = Categorie.create(nom: "Explorer le monde")
ACTIVITE7.each do |act|
  Activite.create(nom: act, categorie: c)
end
c = Categorie.create(nom: "Devenir Eleve")
ACTIVITE8.each do |act|
  Activite.create(nom: act, categorie: c)
end
=end

Activite.destroy_all

file = File.read('/Users/marcborgna/code/kreel83/lesmaternelles/db/items.json')
json = JSON.parse(file)
json.each do |record|
  a = Activite.new
  a.titre = record['titre']
  a.photo = record['image']
  a.categorie = Categorie.find(record['section_id'].to_i + 1)
  a.soustitre = record['st']
  a.level = record['lvl']
  a.activite = record['activite']
  a.save!
  puts record
  puts "-------------------------"
end
