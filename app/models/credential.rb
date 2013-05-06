class Credential < ActiveRecord::Base
  attr_accessible :Password, :RoleID, :UserID
end
