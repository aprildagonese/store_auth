class User < ApplicationRecord

  def self.authenticate(email, password)
    if User.validate_email(email) != nil
      user = User.find_by(email: email)
      user.validate_password(user, password)
    else
      nil
    end
  end

  def self.validate_email(email)
    @user = User.find_by(email: email)
  end

  def validate_password(password_entry)
    if password == password_entry
      self
    else
      nil
    end
  end

end
