# README

2.2.3. Questions Maintenant que ta BDD est prête, tu vas répondre aux questions ci-dessous :

a) Niveau facile

Quel est le nombre total d'objets Album contenus dans la base (sans regarder les id bien sûr) ?

Album.count

=> 347

Qui est l'auteur de la chanson "White Room" ?

author = Track.find_by(title: "White Room") author.artist

=> "Eric Clapton"

Quelle chanson dure exactement 188133 milliseconds ?

duration = Track.find_by(duration: 188133) duration.title

=> "Perfect"

Quel groupe a sorti l'album "Use Your Illusion II" ?

Album.find_by(title: "Use Your Illusion II").artist

=> "Guns N Roses"

b) Niveau Moyen

Combien y a t'il d'albums dont le titre contient "Great" ?

Album.where("title like ?", "%Great%").count

=> 13

Supprime tous les albums dont le nom contient "music".

album = Album.where("title like ?", "%music%") 
album.destroy_all

Combien y a t'il d'albums écrits par AC/DC ?

album_ACDC = Album.where(artist: "AC/DC") album_ACDC.count

Combien de chanson durent exactement 158589 millisecondes ?

Track.where(duration: 158589).count

Il n'y a pas de chansons qui durent 158589 millisecondes.

c) Niveau Difficile
Pour ces questions, tu vas devoir effectuer des boucles dans la console Rails. C'est peu commun mais c'est faisable, tout comme dans IRB.

puts en console tous les titres de AC/DC.

Track.where(artist: "AC/DC").each do |track|
    puts track.title
end

puts en console tous les titres de l'album "Let There Be Rock".

Track.where(album: "Let There Be Rock").each do |track|
    puts track.title
end

Calcule le prix total de cet album ainsi que sa durée totale.

price = 0
duration = 0

Track.where(album: "Let There Be Rock").each do |track|
    price += track.price
    duration += track.duration
end

price
duration

Calcule le coût de l'intégralité de la discographie de "Deep Purple".

cost = 0

Track.where(artist: "Deep Purple").each do |track|
    cost += track.price
end

cost

Modifie (via une boucle) tous les titres de "Eric Clapton" afin qu'ils soient affichés avec "Britney Spears" en artist.

Track.where(artist: "Eric Clapton").each do |track|
    track.update(artist: "Britney Spears")
end

