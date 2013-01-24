class Url < ActiveRecord::Base
  attr_accessible :long, :short
  belongs_to :user

  def store_url
    self.long = get_long_url
    self.save!
    self.short = self.id
    self.save!
  end

  def get_long_url
    puts "Please enter the URL you would like shortened:"
    gets.chomp
  end
end