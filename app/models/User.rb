class User < ActiveRecord::Base
  attr_accessible :name, :email

  def get_user_name
    puts "Please enter your name:"
    gets.chomp.split.map! do |name|
      name.capitalize
    end.join(" ")
  end

  def get_user_email
    puts "Please enter your e-mail address:"
    gets.chomp
  end

  def store_user
    self.name = get_user_name
    self.email = get_user_email
    self.save!
  end
end