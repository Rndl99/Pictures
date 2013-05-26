class Comment < ActiveRecord::Base
  belongs_to :picture
  belongs_to :user
  attr_accessible :body, :commenter

  validates :body, :presence => true
end
