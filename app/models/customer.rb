class Customer < ActiveRecord::Base
  has_one :cart, dependent: :destroy
  has_many :wishlists
  has_many :sales
end