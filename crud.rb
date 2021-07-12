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
    Bcrypt::Password.new(password)
end

def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
        user_record[:password] = create_hash_digest(user_record[:password])
    end
    # return the list
    list_of_users
end

puts create_secure_users(users)
