require_relative 'crud'

users = [
  { username: 'mashrur', password: 'password1' },
  { username: 'jack', password: 'password2' },
  { username: 'arya', password: 'password3' },
  { username: 'jonshow', password: 'password4' },
  { username: 'heisenburg', password: 'password5' },
]

hashes_users = Crud.create_secure_users(users)

puts hashes_users
