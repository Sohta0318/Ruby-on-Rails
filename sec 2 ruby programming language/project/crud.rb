module Crud
  require 'bcrypt'

  puts 'Module Crud activated'

  def create_hash_digest(password)
    return BCrypt::Password.create(password)
  end

  def verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def create_secure_users(list_of_users)
    list_of_users.each do |user|
      user[:password] = create_hash_digest(user[:password])
    end
    list_of_users
  end

  # new_password = create_hash_digest('password1')
  # puts new_password
  # puts new_password == 'password2'

  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user|
      if user[:username] == username &&
           verify_hash_digest(user[:password]) == password
        return user
      end
    end
    'Credential were not correct'
  end
end
