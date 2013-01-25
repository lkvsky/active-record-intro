class Visit < ActiveRecord::Base
  attr_accessible :user_id, :url_id

  belongs_to :user
  belongs_to :url

  def self.unique_visits(url_id)
    uniques = Visit.where(:url_id => url_id).select(:user_id).uniq
    uniques.length
  end

  def self.all_visits(url_id)
    Visit.where(:url_id => url_id).count
  end

  def self.recently_visited
    visits = Visit.find_by_sql("SELECT * FROM urls
    JOIN visits ON urls.id = visits.url_id
    ORDER BY visits.created_at DESC LIMIT 2")

    visits.each { |v| p v.long }
  end
end