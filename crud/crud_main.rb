require_relative 'crud'

users = [
    {username: "max", password: "password1"},
    {username: "adam", password: "password2"},
    {username: "margareth", password: "password3"},
    {username: "jack", password: "password4"},
    {username: "mary", password: "password5"},
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users