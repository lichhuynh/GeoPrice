class Manufacturer < ActiveRecord::Base
  attr_accessible :Address, :City, :Email, :Fax, :ManufacturerID, :Name, :Phone, :PostCode
end
