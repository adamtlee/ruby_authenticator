# require 'bundler/inline'

# gemfile true do
#     source 'http://rubygems.org'
#     gem 'bcrypt'
# end

# Using the hashing MD5 bcrypt algorithm to hash passwords 
# Hashing passwords to store them in the database
# In modern practice it's not ideal to store passwords as string values
# run 'gem install bcrypt' before running the script

require 'bcrypt'

my_password = BCrypt::Password.create("my password")
my_password_1 = BCrypt::Password.create("my password")
my_password_2 = BCrypt::Password.create("my password")


puts my_password 
puts my_password_1
puts my_password_2


# encrypts to this value
# my_password = BCrypt::Password.new("$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa")

# string comparison of the actual password
# puts my_password == "my password"     #=> true

# my_password == "not my password" #=> false




