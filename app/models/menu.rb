class Menu < ApplicationRecord
  validates_presence_of :name
  belongs_to :restaurant
  has_many :dishes
end
