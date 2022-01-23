# # # puts 'Hello'
# # # p 'Hello'
# # # print 'Hello'

# # # greeting = 'Hello world\n'
# # # print greeting

# # # def say_hello(a)
# # #   print a
# # # end
# # # say_hello('Good morning')

# # # firstName = 'Sohta'
# # # lastName = 'Iguchi'
# # # print "My first name is #{firstName}, and last name is #{lastName}"

# # # print 'Sohta'.class
# # # print 'Sohta'.methods

# # # print "What is youe first name?"
# # # firstName = gets.chomp
# # # print "Your first name is #{firstName}"

# # # puts "Entere your first name"
# # # firstName = gets.chomp
# # # puts "Enter your last name"
# # # lastName = gets.chomp

# # # puts "Your fullName is #{firstName} #{lastName}"
# # # puts "Your full name reversed #{lastName.reverse} #{firstName.reverse}"
# # # fullName = "#{firstName}#{lastName}"
# # # puts "Your name has #{fullName.length -1} characters in it"

# # puts 10.0 /4

# # def multiply(num1, num2)
# #   num1.to_f * num2.to_f
# # end

# # puts multiply(3, 4)

# # condition = 10 == 9

# # if condition
# #   puts 'hello'
# # else
# #   puts 'bye'
# # end

# a = [1, 2, 3, 4, 5, 6]
# # puts a
# # print a
# # p a.last

# # x = 1..10
# # p x.to_a

# # a.reverse!
# # puts a

# # %w(my name is Sohta)

# # for i in a

# #   print i
# # end

# # a.each do |i|
# #   print i
# # end

# # a.each {|i| print i}

# # z = (1..100).to_a.shuffle

# # print z.select {|i| i.odd?}

# # sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}
# # # p sample_hash['a']

# # another_hash = {a:1,b:2,c:3}
# # p another_hash[:a]

# users = [
#   { username: 'mashrur', password: 'password1' },
#   { username: 'jack', password: 'password2' },
#   { username: 'arya', password: 'password3' },
#   { username: 'jonshow', password: 'password4' },
#   { username: 'heisenburg', password: 'password5' },
# ]

# def auth_user(username, password, list_of_users)
#   list_of_users.each do |user_record|
#     if user_record[:username] == username && user_record[:password] == password
#       return user_record
#     end
#   end
#   'Credential were not correct'
# end

# puts 'Welcom to the authenticator'
# 25.times { print ('-') }
# puts
# puts 'This program will take input from the user and compare password'
# puts 'if password is correct, you will get back the user object'

# attempts = 1
# while attempts < 4
#   print 'Usename: '
#   username = gets.chomp
#   print 'Password: '
#   password = gets.chomp
#   authentication = auth_user(username, password, users)
#   print authentication
#   puts 'Press n to quit or any other keys to continue:'
#   input = gets.chomp.downcase

#   break if input == 'n'

#   attempts += 1
# end

# puts 'You have exceeded the number of attempts' if attempts == 4

# For styling

# def my_function
#   # any code
# end

# class MyClas
#   :scale
# end

# assignment
dial_book = {
  'newyork' => '212',
  'newbrunswick' => '732',
  'edison' => '908',
  'plainsboro' => '609',
  'sanfrancisco' => '301',
  'miami' => '305',
  'paloalto' => '650',
  'evanston' => '847',
  'orlando' => '407',
  'lancaster' => '717',
}

# Get city names from the hash
def get_city_names(somehash)
  # Write code here
  somehash.each { |key, val| puts key }
  p 'Which city do you want to look up'
  return city_name = gets.chomp
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  # Write code here
  return somehash.select { |value| value == key }
end

# Execution flow
loop do
  city = get_city_names(dial_book)
  code = get_area_code(dial_book, city)
  p code
  puts 'You want to continue? (Y/N)'
  answer = gets.chomp.downcase
  break if answer != 'y'
end
