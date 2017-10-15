class AnswerSheetChoice < ApplicationRecord
  belongs_to :answer_sheet, inverse_of: :answer_sheet_choices
  belongs_to :question
  belongs_to :answer

  with_options presence: true do
    validates :answer_sheet
    validates :question
    validates :answer
  end

  scope :by_answer, ->(answer) { where(answer: answer) if answer.present? }
end
