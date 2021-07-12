require_relative 'crud'
# require 'crud'

users = [
    { username: "Harry", password: "bloopers" },
    { username: "Tom", password: "theSecretKey" },
    { username: "Linda", password: "kjepw2" }
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users