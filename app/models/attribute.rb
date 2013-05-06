class Attribute < ActiveRecord::Base
  attr_accessible :AttributeDescription, :AttributeID, :AttributeName, :AttributeValue, :AttributeValueUnit, :ProductID
end
