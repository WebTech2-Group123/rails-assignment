class User < ActiveRecord::Base

  # email must be present, be an email and be confirmed
  validates :email, presence: {message: 'must be present, please specify one.'}
  validates :email, email: true
  validates :email, confirmation: true
  validates :email_confirmation, presence: true

  # email must be unique
  validates :email, uniqueness: {message: 'already registered, please use another one.'}

  # password must be present
  validates :password, presence: {message: 'must be present, please specify one.'}

  # authenticate the user
  def authenticate (password)
    self.password == password
  end

end
