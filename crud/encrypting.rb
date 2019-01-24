require 'bcrypt'

input_password = "my password"

my_password = BCrypt::Password.create(input_password)
another_password = BCrypt::Password.new("$2a$10$u7kJaRYMT6Eg6kB5eDVFseXXuVIdF2s6qmzEvjqRMG35z3M4PxvI6")
puts another_password == input_password #works when hashed password is compared to known password
puts another_password == my_password #doesn't work when comparing two hashed strings
puts my_password