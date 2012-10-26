class Image < ActiveRecord::Base
  attr_accessible :title, :imagedata, :uploadedby, :avatar

  has_many :comments, dependent: :destroy
  mount_uploader :avatar, AvatarUploader
end
