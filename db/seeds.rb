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
    address:      '7 Boundary St, paris E2 7JE',
    category:     'french',

  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, rome E1 6PQ',
    category:     'italian',

  },
   {
    name:         'Cafe Paris',
    address:      '56A Shoreditch High St, paris E1 6PQ',
    category:     'french',

  },
   {
    name:         'Jacky Chan',
    address:      '56A Shoreditch High St, hong kong E1 6PQ',
    category:     'chinese',

  },
    {
    name:         'Koehn Fries',
    address:      '56A Shoreditch High St, brussle E1 6PQ',
    category:     'belgian',

  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
