# le #{} permet d'écrire du code ruby dans un string

# Il s'agit d'une chaîne de caractère (string)
puts "On va compter le nombre d'heures de travail à THP"

# Il s'agit de string incluant du code ruby qui fait une opération mathématique
puts "Travail : #{10 * 5 * 11}"
puts "En minutes ça fait : #{10 * 5 * 11 * 60}"

# il s'agit d'un string
puts "Et en secondes ?"

# il s'agit une opération mathématique
puts 10 * 5 * 11 * 60 * 60

# il s'agit d'un string
puts "Est-ce que c'est vrai que 3 + 2 < 5 - 7 ?"

# il s'agit une opération mathématique qui retoune un booléen
puts 3 + 2 < 5 - 7

# Il s'agit de string incluant du code ruby qui fait une opération mathématique
puts "Ça fait combien 3 + 2 ? #{3 + 2}"
puts "Ça fait combien 5 - 7 ? #{5 - 7}"

# il s'agit d'un string
puts "Ok, c'est faux alors !"

# il s'agit d'un string
puts "C'est drôle ça, faisons-en plus :"

# Il s'agit de string incluant du code ruby qui fait une opération mathématique qui retoune un booléen
puts "Est-ce que 5 est plus grand que -2 ? #{5 > -2}"
puts "Est-ce que 5 est supérieur ou égal à -2 ? #{5 >= -2}"
puts "Est-ce que 5 est inférieur ou égal à -2 ? #{5 <= -2}"