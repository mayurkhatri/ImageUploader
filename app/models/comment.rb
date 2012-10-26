class Comment < ActiveRecord::Base
  attr_accessible :body, :uploadedby

  belongs_to :image
end
