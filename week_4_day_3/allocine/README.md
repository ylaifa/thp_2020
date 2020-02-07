# README

Réponse:

2.1.2 a) Un premier film à la mano On va commencer par saisir un chef d’œuvre du cinéma franco-américain : Beowulf.

film1 = Movie.new

film1.name = "Beowulf"

film1.year = 1999

film1.genre = "Fantastique, Action, Epouvante-horreur"

film1.synopsis = "La Terre a traverse de nombreuses crises et cataclysmes. Les hommes vivent dans la peur et dans l'obscurite car les tenebres voilent desormais la lumiere du soleil. Dans cet univers hostile, erre un homme maudit et solitaire, Beowulf, fruit des amours interdites d'une mortelle avec le diable. Pour vaincre le monstre qui est en lui, Beowulf doit combattre le mal. Son plus redoutable adversaire est une creature tapie dans les combles d'une forteresse. Invincible, d'une sauvagerie sans nom, elle tue quotidiennement puis disparait des l'aube."

film1.director = "Graham Baker"

film1.allocine_rating = 1.2

film1.save

b) Deux films à la mano mais efficace Maintenant on va rentrer 2 films en une seule ligne de console

Movie.create(name: "L'EXORCISTE", year: 2001, genre: "Epouvante-horreur, Thriller", synopsis: "En Irak, le Père Merrin est profondément troublé par la découverte d'une figurine du démon Pazuzu et les visions macabres qui s'ensuivent. Parallèlement, à Washington, la maison de l'actrice Chris MacNeil est troublée par des phénomènes étranges : celle-ci est réveillée par des grattements mystérieux provenant du grenier, tandis que sa fille Regan se plaint que son lit bouge. Quelques jours plus tard, une réception organisée par Chris est troublée par l'arrivée de Regan, qui profère des menaces de mort à l'encontre du réalisateur Burke Dennings. Les crises se font de plus en plus fréquentes. En proie à des spasmes violents, l'adolescente devient méconnaissable. Chris fait appel à un exorciste. L'Eglise autorise le Père Damien Karras à officier en compagnie du Père Merrin. Une dramatique épreuve de force s'engage alors pour libérer Regan.", director: "William Friedkin", allocine_rating: 3.9, my_rating: 3, already_seen: true)

Movie.create(name: "OSS 117, LE CAIRE NID D'ESPIONS", year: 2006, genre: "Comédie, Action, Espionnage", synopsis: "Égypte, 1955, le Caire est un véritable nid d'espions. Tout le monde se méfie de tout le monde, tout le monde complote contre tout le monde : Anglais, Français, Soviétiques, la famille du Roi déchu Farouk qui veut retrouver son trône, les Aigles de Kheops, secte religieuse qui veut prendre le pouvoir. Le Président de la République Française, Monsieur René Coty, envoie son arme maîtresse mettre de l'ordre dans cette pétaudière au bord du chaos : Hubert Bonisseur de la Bath, dit OSS 117.", director: "Michel Hazanavicius", allocine_rating: 3.5)

c)

Crée une entrée avec un film de ton choix (un film que tu as déjà vu). Je veux juste que l'ensemble des attributs soient renseignés.
Movie.create(name: "LA CITÉ DE LA PEUR", year: 1994, genre: "Comédie", synopsis: "Odile Deray, attachée de presse, vient au Festival de Cannes pour présenter le film Red is Dead. Malheureusement, celui-ci est d'une telle faiblesse que personne ne souhaite en faire l'écho. Mais lorsque les projectionnistes du long-métrage en question meurent chacun leur tour dans d'étranges circonstances, Red is dead bénéficie d'une incroyable publicité. Serge Karamazov est alors chargé de protéger le nouveau projectionniste du film...", director: "Alain Berbérian, Alain Chabat", allocine_rating: 4.0, my_rating: 4, already_seen: true)

Modifie la note Allociné de Beowulf pour qu'elle soit à 4,7. Ce chef-d’œuvre mérite d'être reconnu comme tel.
film1.allocine_rating = 4.7

film1.save

Modifie le genre de l'Exorciste pour que ça soit une comédie. Avec un peu de chance ta petite soeur va tomber dessus.
film = Movie.find_by(name: "L'EXORCISTE")

film.genre = "Comédie"

film.save

Affiche, avec une commande en Movie.where, l'ensemble des films que tu as déjà vus.
film_already_seen = Movie.where(already_seen: true)

À partir de cet array de films que tu as déjà vus, supprime le premier de ta BDD.
film = film_already_seen.first

film.destroy

d)

Maintenant que les 100 entrées sont créées, affiche le tout en console avec table_print (ne mets pas toutes les colonnes). Balade-toi, en scrollant, dans la liste et repère 10 films que tu trouves bien funs (noms improbables, etc.). Pour chacun de ces films tu vas faire comme si tu venais de les visionner :

Retrouve-les soit via leur id avec Movie.find ou via leur nom avec Movie.find_by(name: "xxx") puis affecte-les à une variable du genre mon_film.

Passe alors leur already_seen en true. Donne leur une note dans my_rating

mon_film1 = Movie.find(114)

mon_film1.already_seen = true

mon_film1.my_rating = 3

mon_film.save

mon_film2 = Movie.find_by(name: "Things Fall Apart")

mon_film2.update(already_seen: true, my_rating: 4)

