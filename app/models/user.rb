class User < ApplicationRecord
  has_secure_password

  validates :password, length: { minimum: 6 }
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
