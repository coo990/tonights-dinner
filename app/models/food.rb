class Food < ApplicationRecord
  # belongs_to :user
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :body, presence: false              
  # , length: { minimum: 1, maximum: 300 }
  # validates :user_id, presence: true
end
