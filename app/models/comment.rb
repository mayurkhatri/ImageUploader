class Comment < ActiveRecord::Base
  attr_accessible :body, :commentedby

  belongs_to :image
  belongs_to :user
end
