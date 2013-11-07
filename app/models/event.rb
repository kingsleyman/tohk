class Event
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :venue
  belongs_to :category
  
  # def self.category_types
  #   ["Around Town", "Art", "Classical", "Clubs", "Film", "Food & Drink", "Pop & Rock",  "Queer", "Sport", "Stage"]
  # end

  field :title, type: String
  field :category
  field :start_date, type: Date
  field :end_date, type: Date
  field :price, type: Float
  field :recommended, type: Boolean

  # validates :category, inclusion: { in: Event.category_types } 

end

