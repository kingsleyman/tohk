class Category
  include Mongoid::Document

  has_many :events

  # def self.category_types
  #   ["Around Town", "Art", "Classical", "Clubs", "Film", "Food & Drink", "Pop & Rock",  "Queer", "Sport", "Stage","Test","Test 2"]
  # end

  field :name, type: String
  field :subcategory, type: String

  # validates :category, inclusion: { in: Category.category_types } 

end





