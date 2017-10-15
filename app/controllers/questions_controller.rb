class QuestionsController < ApplicationController
  include AnswerSheetSetter

  before_action :create_answer_sheet, only: :index
  before_action :set_answer_sheet
  before_action :check_answer_sheet_choices_exists, except: :index

  def index
    @question = Question.first

    if @answer_sheet.answer_sheet_choices.any?
      redirect_to @answer_sheet.current_question
    else
      @answer_sheet.answer_sheet_choices.build
    end
  end

  def show
    @question = Question.find(params[:id])

    if @question != @answer_sheet.current_question
      redirect_to @answer_sheet.current_question
    else
      @answer_sheet.answer_sheet_choices.build
    end
  end

  def resume
    if @answer_sheet.current_question
      redirect_to @answer_sheet.current_question
      return
    end

    @questions            = Question.all
    @answer_sheet_choices = AnswerSheetChoice.all
  end

  private

  def check_answer_sheet_choices_exists
    if @answer_sheet.answer_sheet_choices.none?
      redirect_to questions_path
      return
    end
  end

  def create_answer_sheet
    session[:answer_sheet_id] = AnswerSheet.create.id unless session[:answer_sheet_id]
  end
end
