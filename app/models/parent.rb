class Parent < ActiveRecord::Base
  belongs_to :grandparent
  attr_accessible :name
end
