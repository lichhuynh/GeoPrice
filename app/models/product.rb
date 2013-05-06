class Product < ActiveRecord::Base
  attr_accessible :Description, :ManufacturerID, :Name, :ProductID, :Type
end
