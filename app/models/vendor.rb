class Vendor < ActiveRecord::Base
  has_many :sales
  has_many :products

  def add_random_product
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
             'Can of Pepper Spray',
             'Used Socks',
             'Adult Diapers']

    adjectives.shuffle!
    nouns.shuffle!

    products.create({name:adjectives[0]+" "+nouns[0],
                      price:Random.new.rand(20.0..1500.0),
                      stock:Random.new.rand(10..100),
                      created_at:DateTime.current,
                      updated_at:DateTime.current})
  end
end