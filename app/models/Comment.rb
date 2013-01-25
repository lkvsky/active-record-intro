class Comment < ActiveRecord::Base
  attr_accessible :user_id, :url_id, :comment

  belongs_to :user
  belongs_to :url

  def self.comments_by_user
  end

  def self.comments_by_url
  end
end