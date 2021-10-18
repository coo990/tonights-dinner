class User < ActiveRecord::Base
  has_many :foods
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
  validates :email, presence: true, length: { maximum: 105 }, uniqueness: { case_sensitive: false },
  before_save { self.email = email.downcase }
  

end