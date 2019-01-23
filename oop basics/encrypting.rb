require 'bcrypt'

example_password = "my password"

my_password = BCrypt::Password.create(example_password)
another_password = BCrypt::Password.new("$2a$10$u7kJaRYMT6Eg6kB5eDVFseXXuVIdF2s6qmzEvjqRMG35z3M4PxvI6")
puts another_password == example_password
puts my_password