require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :user_name, :password

  # attr_reader :user_name

  # @first_name
  # @last_name
  # @email
  # @user_name
  # @password

  # def set_first_name(name)
  #   @first_name = name
  # end

  # def first_name
  #   @first_name
  # end

  def initialize(firstname, lastname, email, username, password)
    @first_name = firstname
    @last_name = lastname
    @email = email
    @user_name = username
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, email: #{@email}, username: #{@user_name}, password: #{@password}"
  end
end

mashrur =
  Student.new(
    'Mashrur',
    'Hossain',
    'mashrur0318@gmail.com',
    'mashrur1',
    'Mashrur0318',
  )
john = Student.new('John', 'Doe', 'john0318@gmail.com', 'john1', 'John0318')
puts mashrur
puts john

mashrur.last_name = john.last_name
puts 'Mashrur is altered'
puts mashrur
# puts mashrur
# mashrur.set_first_name('Mashrur')
# puts mashrur
# mashrur.first_name = 'Mashrur'
# mashrur.last_name = 'Hossain'
# mashrur.email = 'mashrur0318@gmail.com'
# # mashrur.user_name = 'mashrur1'
# mashrur.set_user_name('mashrur1')
# puts mashrur.first_name
# puts mashrur.last_name
# puts mashrur.email
# puts mashrur.user_name

hased_password = mashrur.create_hash_digest(mashrur.password)
puts hased_password
