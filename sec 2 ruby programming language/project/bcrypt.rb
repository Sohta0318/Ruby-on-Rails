require 'bcrypt'

my_password = BCrypt::Password.create('my password')

puts my_password

# my_password =
#   BCrypt::Password.new(
#     '$2a$12$Cw3p.fiLBGS10CkjManFhOV6aoJtHDI4.CO3qnXTPsAUWQvrBOhn2',
#   )

# puts my_password
# puts my_password == 'my password' #=> true
# puts my_password == 'not my password' #=> false
