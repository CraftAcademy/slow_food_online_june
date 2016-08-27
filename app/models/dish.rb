class Dish < ApplicationRecord
  CATEGORIES = ['Starter', 'Main Course', 'Dessert']
  belongs_to :menu
  validates_presence_of :name,
                        :price,
                        :menu,
                        :category

  validates :category, inclusion: CATEGORIES

end
