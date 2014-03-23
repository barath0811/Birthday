class Images < ActiveRecord::Base
	mount_uploader :image, ImageUploader
  belongs_to :user
  attr_accessible :image, :caption

  validates :image, :caption, :presence => true
end
