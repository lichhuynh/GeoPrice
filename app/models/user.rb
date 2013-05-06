class User < ActiveRecord::Base
  attr_accessible :Address, :City, :Email, :FirstName, :LastName, :Phone, :Postcode, :UserID, :Username
end
