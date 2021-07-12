require 'bcrypt'
users = [
    { username: "Harry", password: "bloopers" },
    { username: "Tom", password: "theSecretKey" },
    { username: "Linda", password: "kjepw2" }

]

def create_hash_digest(password)
    BCrypt::Password.create(password)
end

def verify_hash_digest(password)
    BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
        user_record[:password] = create_hash_digest(user_record[:password])
    end
    # return the list
    list_of_users
end

puts new_users = create_secure_users(users)
puts new_users

def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
            return user_record
        end
    end

    "Credentials were not correct"
end

# correct password
p authenticate_user("Linda", "kjepw2", new_users)

# incorrect password
p authenticate_user("Tom", "wrongPassword", new_users)
