class User < ApplicationRecord
  has_secure_password
  has_many :foods
  
  validates :username, presence: true, uniqueness: true,
  length: { minimum: 3, maximum: 25 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, 
  format: { with: VALID_EMAIL_REGEX }

  before_save {self.email = email.downcase}
end
