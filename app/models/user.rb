class User < ApplicationRecord

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    if user != nil
      user.validate_password(password)
    else
      nil
    end
  end

  def validate_password(password_entry)
    if password == password_entry
      self
    else
      nil
    end
  end

end
