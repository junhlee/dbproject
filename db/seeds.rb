# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

adjectives = ['Obtuse',
              'Alogical',
              'Anodyne',
              'Febrile',
              'Lurid',
              'Protuberant',
              'Redolent',
              'Preponderant',
              'Moribund',
              'Interminable']

nouns = ['Peck of Frenchmen',
         'Chinese Man',
         'Pumpkin',
         'Basket of Oranges',
         'Interstate Roadsign',
         'Database Systems Textbook',
         'Ouija Board',
         'Satanic Mask',
         'Used Coffin',
         'Can of Pepper Spray']

adjectives.shuffle!
nouns.shuffle!

for i in 0..9 do
  Product.create({name:adjectives[i]+" "+nouns[i],
                 price:Random.new.rand(20.0..1500.0),
                 stock:Random.new.rand(10..100),
                 created_at:DateTime.current,
                 updated_at:DateTime.current})
end