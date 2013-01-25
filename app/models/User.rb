class User < ActiveRecord::Base
  attr_accessible :name, :email

  def log_in
    store_user
  end

  def add_url
    Url.from_user(self)
  end

  def visit_url(url)
    Visit.create(:user_id => self.id, :url_id => url.id)  #Vincent - you could try this syntax as well:
                                                          # create(user_id: self.id, url_id: url.id)
  end

  def leave_comment(url)
    puts "Leave comment:"
    comment = gets.chomp
    Comment.create(:user_id => self.id, :url_id => url.id, :comment => comment)
  end

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

  def store_user                  #Vincent - where does the new User object get created?
    self.name = get_user_name
    self.email = get_user_email
    self.save!
  end
end
