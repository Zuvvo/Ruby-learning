module Crud
  require 'bcrypt'
  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  # def Crud.verify_pass_digest    or
  # def self.verify_pass_digest
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
end