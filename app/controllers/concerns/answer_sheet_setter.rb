module AnswerSheetSetter
  extend ActiveSupport::Concern

  included do
    def set_answer_sheet
      if session[:answer_sheet_id]
        @answer_sheet ||= AnswerSheet.find(session[:answer_sheet_id])
      else
        redirect_to questions_path
      end
    end
  end
end
