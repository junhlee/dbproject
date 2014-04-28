class Sale < ActiveRecord::Base
  belongs_to :customer
  belongs_to :vendor
  has_one :cart
end
