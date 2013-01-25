class Comment < ActiveRecord::Base
  attr_accessible :user_id, :url_id, :comment

  belongs_to :user
  belongs_to :url
end