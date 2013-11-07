class Venue
  include Mongoid::Document

  has_many :events

  field :name, type: String
  field :district, type: String
  field :phone, type: String
  field :address, type: String
  field :website, type: String
  field :map_code, type: String
  field id: SecureRandom.urlsafe_base64, type: String

end





