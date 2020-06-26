module Crud
  require 'bcrypt'

  puts "Module Crud activated"

  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def self.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def self.create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(
        user_record[:password]
      )
    end
    list_of_users
  end

  # secure_list= create_secure_users(users)

  def self.authentificate_user(username, password, list_of_users)
    hashed_password = nil

    list_of_users.each do |user|
      puts user[:username]
      if user[:username] == username && verify_hash_digest(user[:password])== password
        return true
        break
      end
    end
    return false
  end
end




# new_password = create_hash_digest("password1")
# puts new_password == "password2"
