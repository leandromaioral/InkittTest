class Question < ApplicationRecord
  has_many :answers
  has_many :answer_sheet_choices

  validates :text, presence: true

  def next
    self.class.where('id > ?', id).first
  end

  def previous
    self.class.where('id < ?', id).last
  end
end
