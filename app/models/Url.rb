class Url < ActiveRecord::Base
  attr_accessible :long, :short, :tag
  belongs_to :user

  def self.from_user(user)
    p = Url.new
    p.store_url(user)
    p
  end

  def store_url(user)
    self.long = get_long
    self.tag = get_tag
    self.user_id = user.id
    self.save!
    self.short = self.id
    self.save!
  end

  def get_long
    puts "Please enter the URL you would like shortened:"
    gets.chomp
  end

  def get_tag
    puts "What's this all about?"
    gets.chomp
  end

  def launch
    url = self.long
    unless self.long.start_with?('http')
      url = 'http://' + self.long
    end
    Launchy.open(url)
  end
end