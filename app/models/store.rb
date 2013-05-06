class Store < ActiveRecord::Base
  attr_accessible :Address, :City, :Email, :Name, :Phone, :PostCode, :StoreID, :StoreType
end
