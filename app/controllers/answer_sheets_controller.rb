class AnswerSheetsController < ApplicationController
  include AnswerSheetSetter

  before_action :set_answer_sheet

  def update
    @answer_sheet.update(permited_params)

    redirect_to params[:next_question_url] || resume_questions_path
  end

  private

  def permited_params
    params.require(:answer_sheet)
          .permit(
            answer_sheet_choices_attributes: %i(
              question_id
              answer_id
            )
          )
  end
end
