users = [
    {username: "max", password: "password1"},
    {username: "adam", password: "password2"},
    {username: "margareth", password: "password3"},
    {username: "jack", password: "password4"},
    {username: "mary", password: "password5"},
]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  "Credentials were not correct."
end

max_attempts = 3
attempts = 0

puts "Welcome!"
25.times {print "-"}
puts
while attempts < max_attempts
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
#  input = gets.chomp.downcase
#  break if input == "n"
  attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 3