class AnswerSheet < ApplicationRecord
  has_many :answer_sheet_choices,
           inverse_of: :answer_sheet,
           dependent: :destroy

  accepts_nested_attributes_for :answer_sheet_choices,
                                reject_if: proc { |attributes|
                                  attributes['question_id'].blank? ||
                                  attributes['answer_id'].blank?
                                },
                                allow_destroy: true,
                                limit: 1,
                                update_only: true

  def current_question
    answer_sheet_choices.last&.question&.next
  end
end
