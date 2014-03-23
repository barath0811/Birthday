class Wish < ActiveRecord::Base
  belongs_to :user
  attr_accessible :address, :title, :wish
end
