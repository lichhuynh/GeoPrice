class Wishlist < ActiveRecord::Base
  attr_accessible :LastName, :LastUpdated, :ListID, :UserID, :ValidFrom, :ValidTo
end
