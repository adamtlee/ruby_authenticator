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
        puts user_record[:password]
    end
end

create_secure_users(users)
