class Stock < ActiveRecord::Base
  attr_accessible :Price, :ProductID, :Quantity, :StoreID
end
