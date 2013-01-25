user = User.new
user.log_in

url_obj = user.add_url

puts "Do you want to visit this site?"

if gets.chomp == "y"
  user.visit_url(url_obj)
  url_obj.launch
end

puts "Do you want to comment on this awesome link?"

if gets.chomp == "y"
  user.leave_comment(url_obj)
end