class Customer < ActiveRecord::Base
  has_one :cart
  has_many :wishlists
  has_many :sales
end