users = [
    { username: "Harry", password: "bloopers" },
    { username: "Tom", password: "theSecretKey" },
    { username: "Linda", password: "kjepw2" }

]

def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record
        end
    end
    # in ruby the last return is implied
    "Invald Credentials."
end
puts "Welcome to the rthenticator"
puts "A simple Authetication system written in ruby."
puts "(Only 4 attempts)."
50.times{ print"-"}
puts " "

attempts = 1
while attempts < 5
    print "Input username: "
    username = gets.chomp
    print "Input password: "
    password = gets.chomp
    authentication = authenticate_user(username, password, users)
    puts authentication
    puts "Press q to quit, or any other key to continue"
    input = gets.chomp.downcase
    break if input == "q"
    attempts += 1 
end

puts "You have exceeded the number of attempts" if attempts == 5

    

