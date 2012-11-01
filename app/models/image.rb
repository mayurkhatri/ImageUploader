class Image < ActiveRecord::Base
  attr_accessible :title, :uploadedby, :avatar

  has_many :comments, dependent: :destroy
  mount_uploader :avatar, AvatarUploader
end
