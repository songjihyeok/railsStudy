require 'bundler/inline'
gemfile true do
  source "http://rubygems.org"
  gem 'bcrypt'
end

my_password = BCrypt::Password.create("my password")
my_password_1 = BCrypt::Password.create("my password")
my_password_2 = BCrypt::Password.create("my password")

puts my_password
puts my_password_1
puts my_password_2

puts my_password == "my password"

#
# my_password = BCrypt::Password.new(
#   '$2a$12$43i522U6ZFCiDhrQ0oYFBO93a7eioUjoitQlX2odm5ee5GDcpLYb2'
# )
# puts my_password == "my password"
