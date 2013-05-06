class Wishlistitem < ActiveRecord::Base
  attr_accessible :DesiredPrice, :ListID, :PriceVariance, :ProductID, :Quantity, :StoreType
end
