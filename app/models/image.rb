class Image < ActiveRecord::Base
  attr_accessible :title, :uploadedby, :avatar

  has_many :comments, dependent: :destroy
  belongs_to :user
  mount_uploader :avatar, AvatarUploader, on: :file_name
  validates_presence_of :title, :avatar
end
