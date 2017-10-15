class Answer < ApplicationRecord
  belongs_to :question
  has_many :answer_sheet_choices

  with_options presence: true do
    validates :text
    validates :question
  end

  validates :correct,
            uniqueness: {
              scope: :question_id,
              if: :correct
            }
end
