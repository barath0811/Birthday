class Audios < ActiveRecord::Base
	mount_uploader :audio, ImageUploader
  belongs_to :user

  attr_accessible :audio, :title

  validates :audio, :presence => true
end
