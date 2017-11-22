# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:     'chinese',
    phone_number: '01 02 02 03 04'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     'italian',
    phone_number: '01 58 76 87 90'
  },
  {
    name:         'L entrecôte',
    address:      '140 boulevard de montparnasse 75006 Paris',
    category:     'french',
    phone_number: '01 58 76 87 90'
  },
  {
    name:         'La belle frite',
    address:      '8 rue du colisée',
    category:     'belgian',
    phone_number: '01 32 45 87 22'
  },
  {
    name:         'L alicheur',
    address:      '10 rue saint maur',
    category:     'chinese',
    phone_number: '01 57 77 40 90'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
