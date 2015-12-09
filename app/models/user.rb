class User < ActiveRecord::Base

  def authenticate (password)
    self.password_digest == password
  end
end
