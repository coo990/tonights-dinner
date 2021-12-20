# frozen_string_literal: true

class Food < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :body, presence: false

  def self.search(search)
    if search
      self.where("TITLE LIKE ?", "%#{search}%")
    else
      self.all
    end
  end
end
