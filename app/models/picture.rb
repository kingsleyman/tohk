class Picture
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :event

  field :id 
  field :title

  mount_uploader :image, PictureUploader
  
end
