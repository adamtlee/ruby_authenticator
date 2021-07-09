users = [
    { username: "Harry", password: "bloopers" },
    { username: "Tom", password: "theSecretKey" },
    { username: "Linda", password: "kjepw2" }

]

puts "Welcome to the rthenticator"
puts "A simple Authetication system written in ruby."
50.times{ print"-"}
puts " "

attempts = 1
while attempts < 5
    puts "Input username: "
    username = gets.chomp
    puts "Input password: "
    password = gets.chomp
    users.each do |user|
        if user[:username] == username && user[:password] == password
            puts user
            break
        else
            puts "Invald Credentials."
            break
        end
    end

    puts "Press q to quit, or any other key to continue"
    input = gets.chomp.downcase
    break if input == "q"


    attempts += 1 
end

    

