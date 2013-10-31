class Event
  include Mongoid::Document
  
  def self.category_types
    ["Around Town", "Art", "Classical", "Clubs", "Film", "Food & Drink", "Pop & Rock",  "Queer", "Sport", "Stage"]
  end

  field :title, type: String
  field :category
  field :date, type: Date

  validates :category, inclusion: { in: Event.category_types } 

end

