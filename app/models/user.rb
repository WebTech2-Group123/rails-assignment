class User < ActiveRecord::Base

  # normalize email
  after_validation :downcase_email

  def downcase_email
    self.email = email.downcase
  end

  # email must be present, be an email and be confirmed
  validates :email, presence: {message: 'must be present, please specify one.'}
  validates :email, email: true
  validates :email, confirmation: true

  # email must be unique
  validates :email, uniqueness: {message: 'already registered, please use another one.'}

  # password must be present
  validates :password, presence: {message: 'must be present, please specify one.'}

  # authenticate the user
  def authenticate (password)
    self.password == password
  end

end
