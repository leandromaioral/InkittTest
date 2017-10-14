class Question < ApplicationRecord
  has_many :answers

  validates :text, presence: true
end
