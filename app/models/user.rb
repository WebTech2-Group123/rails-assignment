class User < ActiveRecord::Base

  # email must be present
  validates :email, presence: {scope: :email, message: 'must be present, please specify one.'}

  # email must be unique
  validates :email, uniqueness: {scope: :email, message: 'already registered, please use another one.'}

  # password must be present
  validates :password, presence: {scope: :password, message: 'must be present, please specify one.'}

  # authenticate the user
  def authenticate (password)
    self.password == password
  end

end
