require 'bcrypt'

users = [
    {username: "max", password: "password1"},
    {username: "adam", password: "password2"},
    {username: "margareth", password: "password3"},
    {username: "jack", password: "password4"},
    {username: "mary", password: "password5"},
]

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_pass_digest(password)
  BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)
  list_of_users.each do |record|
    record[:password] = create_hash_digest(record[:password])
  end
end

def authenticate_user(username, password, list_of_users)
  list_of_users.each do |record|
    if record[:username] == username && verify_pass_digest(record[:password]) == password
      return record
    end
  end
  "Credentials were not correct"
end

new_users = create_secure_users(users)
authenticate_user("max", "password1", new_users)

# input_password = "password123"
# new_password = create_hash_digest(input_password)
# puts new_password == input_password