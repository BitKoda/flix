# frozen_string_literal: true

Movie.create!([
                {
                  title: 'Avengers: Endgame',
                  description:
                  %(
      After the devastating events of Avengers: Infinity War, the universe
      is in ruins. With the help of remaining allies, the Avengers assemble
      once more in order to undo Thanos' actions and restore order to the universe.
    ).squish,
                  released_on: '2019-04-26',
                  rating: '12A',
                  total_gross: 1_223_641_414,
                  director: 'Anthony Russo',
                  duration: 181,
                  tagline: 'Avenge the fallen.'
                },
                {
                  title: 'Captain Marvel',
                  description:
                  %(
      Carol Danvers becomes one of the universe's most powerful heroes when Earth is caught in the middle of a galactic
      war between two alien races.
    ).squish,
                  released_on: '2019-03-08',
                  rating: '12A',
                  total_gross: 1_110_662_849,
                  director: 'Anna Boden',
                  duration: 124,
                  tagline: 'Higher. Further. Faster.'
                },
                {
                  title: 'Black Panther',
                  description:
                  %(
      T'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new
      future and must confront a challenger from his country's past.
    ).squish,
                  released_on: '2018-02-16',
                  rating: '12A',
                  total_gross: 1_346_913_161,
                  director: 'Ryan Coogler',
                  duration: 134,
                  tagline: 'Long live the king.'
                },
                {
                  title: 'Avengers: Infinity War',
                  description:
                  %(
      The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before
      his blitz of devastation and ruin puts an end to the universe.
    ).squish,
                  released_on: '2018-04-27',
                  rating: '12A',
                  total_gross: 2_048_359_754,
                  director: 'Anthony Russo',
                  duration: 149,
                  tagline: 'An entire universe. Once and for all.'
                },
                {
                  title: 'Green Lantern',
                  description:
                  %(
      Reckless test pilot Hal Jordan is granted an alien ring that bestows him with otherworldly powers that inducts
      him into an intergalactic police force, the Green Lantern Corps.
    ).squish,
                  released_on: '2011-06-17',
                  rating: '12A',
                  total_gross: 219_851_172,
                  director: 'Martin Campbell',
                  duration: 114,
                  tagline: 'In our darkest hour, there will be light.'
                },
                {
                  title: 'Fantastic Four',
                  description:
                  %(
      Four young outsiders teleport to an alternate and dangerous universe which alters their physical form in shocking
      ways. The four must learn to harness their new abilities and work together to save Earth from a former friend
      turned enemy.
    ).squish,
                  released_on: '2015-08-07',
                  rating: '15',
                  total_gross: 168_257_860,
                  director: 'Josh Trank',
                  duration: 100,
                  tagline: 'Change is coming.'
                },
                {
                  title: 'Iron Man',
                  description:
                  %(
      When wealthy industrialist Tony Stark is forced to build an
      armored suit after a life-threatening incident, he ultimately
      decides to use its technology to fight against evil.
    ).squish,
                  released_on: '2008-05-02',
                  rating: '12A',
                  total_gross: 585_366_247,
                  director: 'Jon Favreau',
                  duration: 126,
                  tagline: "Heroes aren't born. They're built."
                },
                {
                  title: 'Superman',
                  description:
                  %(
      An alien orphan is sent from his dying planet to Earth, where
      he grows up to become his adoptive home's first and greatest
      super-hero.
    ).squish,
                  released_on: '1978-12-15',
                  rating: 'PG',
                  total_gross: 300_451_603,
                  director: 'Richard Donner',
                  duration: 143,
                  tagline: "You'll believe a man can fly."
                },
                {
                  title: 'Spider-Man',
                  description:
                  %(
      When bitten by a genetically modified spider, a nerdy, shy, and
      awkward high school student gains spider-like abilities that he
      eventually must use to fight evil as a superhero after tragedy
      befalls his family.
    ).squish,
                  released_on: '2002-05-03',
                  rating: '12A',
                  total_gross: 825_025_036,
                  director: 'Sam Raimi',
                  duration: 121,
                  tagline: 'With great power comes great responsibility.'
                },
                {
                  title: 'Batman',
                  description:
                  %(
      The Dark Knight of Gotham City begins his war on crime with his
      first major enemy being the clownishly homicidal Joker.
    ).squish,
                  released_on: '1989-06-23',
                  rating: '15',
                  total_gross: 411_348_924,
                  director: 'Tim Burton',
                  duration: 126,
                  tagline: 'Have you ever danced with the devil in the pale moonlight?'
                },
                {
                  title: 'Catwoman',
                  description:
                  %(
      Patience Philips seems destined to spend her life apologizing for taking up space. Despite her artistic ability
      she has a more than respectable career as a graphic designer.
    ).squish,
                  released_on: '2004-07-23',
                  rating: '12A',
                  total_gross: 82_102_379,
                  director: "Jean-Christophe 'Pitof' Comar",
                  duration: 101,
                  tagline: 'You can’t CATch her.'
                },
                {
                  title: 'Wonder Woman',
                  description:
                  %(
      When a pilot crashes and tells of conflict in the outside world, Diana, an Amazonian warrior in training, leaves
      home to fight a war, discovering her full powers and true destiny.
    ).squish,
                  released_on: '2017-06-02',
                  rating: '12A',
                  total_gross: 821_847_012,
                  director: 'Patty Jenkins',
                  duration: 141,
                  tagline: 'Power. Grace. Wisdom. Wonder.'
                },
                {
                  title: 'Daredevil',
                  description:
                  %(
                  A man blinded in a childhood accident fights
                  crime using his superhumanly-elevated remaining
                  senses.).squish,
                  released_on: '2003-02-14',
                  rating: '15',
                  total_gross: 179_179_718,
                  director: 'Mark Steven Johnson',
                  duration: 103,
                  tagline: 'When the streets have gone to Hell, have faith in the devil.'
                },
                {
                  title: 'Hulk',
                  description:
                  %(
                  Bruce Banner, a genetics researcher with a tragic past,
                  suffers massive radiation exposure in his laboratory that
                  causes him to transform into a raging green monster when he
                  gets angry.).squish,
                  released_on: '2003-07-18',
                  rating: '12A',
                  total_gross: 245_360_480,
                  director: 'Ang Lee',
                  duration: 141,
                  tagline: 'What if everything you were forced to keep inside was suddenly set free?'
                },
                {
                  title: 'Ghost Rider',
                  description:
                  %(In order to save his dying father, young stunt cyclist
                  Johnny Blaze sells his soul to Mephistopheles and sadly
                  parts from the pure-hearted Roxanne Simpson, the love of
                  his life. Years later, Johnny's path crosses again with
                  Roxanne, now a go-getting reporter, and also with
                  Mephistopheles, who offers to release Johnny's soul if
                  Johnny becomes the fabled, fiery 'Ghost Rider'.).squish,
                  released_on: '2007-03-01',
                  rating: '15',
                  total_gross: 228_738_393,
                  director: 'Mark Steven Johnson',
                  duration: 114,
                  tagline: 'Hell is about to be unleashed.'
                },
                {
                  title: 'Transformers: Rise of the Beasts',
                  description:
                  %(A '90s globetrotting adventure that introduces the Maximals,
                  Predacons, and Terrorcons to the existing battle on earth
                  between Autobots and Decepticons.).squish,
                  released_on: '2023-06-08',
                  rating: '12A',
                  total_gross: 0,
                  director: 'Steven Caple Jr.',
                  duration: 126,
                  tagline: 'Unite or fall.'
                }
              ])

movie_genres = %w[action
                  adventure
                  comedy
                  crime
                  fantasy
                  horror
                  mystery
                  romance
                  sci-fi
                  thriller]

movie_genres.each do |genre|
  Genre.create!(name: genre)
end

[
  ['Avengers: Endgame', 'avengers-endgame.jpg'],
  ['Avengers: Infinity War', 'avengers-infinity-war.jpg'],
  ['Batman', 'batman.jpg'],
  ['Black Panther', 'black-panther.jpg'],
  ['Captain Marvel', 'captain-marvel.jpg'],
  ['Catwoman', 'catwoman.jpg'],
  ['Daredevil', 'daredevil.jpg'],
  ['Fantastic Four', 'fantastic-four.jpg'],
  ['Ghost Rider', 'ghost-rider.jpg'],
  ['Green Lantern', 'green-lantern.jpg'],
  ['Hulk', 'hulk.jpg'],
  ['Iron Man', 'iron-man.jpg'],
  ['Spider-Man', 'spider-man.jpg'],
  ['Superman', 'superman.jpg'],
  ['Wonder Woman', 'wonder-woman.jpg'],
  ['Transformers: Rise of the Beasts', 'transformers-rise-of-the-beasts.jpg']
].each do |title, filename|
  movie = Movie.find_by(title:)
  file = File.open(Rails.root.join("app/assets/images/#{filename}"))
  movie.main_image.attach(io: file, filename:)
end

[
  ['Avengers: Endgame', %w[action adventure sci-fi]],
  ['Avengers: Infinity War', %w[action adventure sci-fi]],
  ['Batman', %w[fantasy action crime]],
  ['Black Panther', %w[action adventure sci-fi]],
  ['Captain Marvel', %w[action adventure sci-fi]],
  ['Catwoman', %w[action crime fantasy mystery]],
  ['Daredevil', %w[action fantasy]],
  ['Fantastic Four', %w[action adventure sci-fi]],
  ['Ghost Rider', %w[action fantasy thriller]],
  ['Green Lantern', %w[action adventure sci-fi thriller]],
  ['Hulk', %w[action adventure sci-fi]],
  ['Iron Man', %w[action adventure sci-fi]],
  ['Spider-Man', %w[action fantasy]],
  ['Superman', %w[action adventure sci-fi]],
  ['Wonder Woman', %w[action adventure fantasy]],
  ['Transformers: Rise of the Beasts', %w[action adventure sci-fi]]
].each do |title, genres|
  movie = Movie.find_by(title:)
  genres.each do |name|
    genre_name = Genre.find_by(name:)
    movie.genres << genre_name
  end
end

User.create!([
               {
                 name: 'Tony Stark',
                 email: 'ironman@marvel.com',
                 username: 'ironfist',
                 password: 'secret_ironman',
                 password_confirmation: 'secret_ironman',
                 admin: true
               },
               {
                 name: 'Eric Banner',
                 email: 'hulk@marvel.com',
                 username: 'greenmachine',
                 password: 'secret_green',
                 password_confirmation: 'secret_green',
                 admin: false
               },
               {
                 name: 'Patience Philips',
                 email: 'catwoman@marvel.com',
                 username: 'sexycat',
                 password: 'secret_sexycat',
                 password_confirmation: 'secret_sexycat',
                 admin: false
               },
               {
                 name: 'Carol Danvers',
                 email: 'captainmarvel@marvel.com',
                 username: 'marvellous',
                 password: 'secret_marvel',
                 password_confirmation: 'secret_marvel',
                 admin: false
               }
             ])
