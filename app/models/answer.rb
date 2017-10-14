class Answer < ApplicationRecord
  belongs_to :question

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
