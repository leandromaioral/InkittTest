require 'rails_helper'

describe AnswerSheetChoice, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:answer_sheet) }
    it { is_expected.to validate_presence_of(:question) }
    it { is_expected.to validate_presence_of(:answer) }
  end

  describe 'relationships' do
    it { is_expected.to belong_to(:answer_sheet) }
    it { is_expected.to belong_to(:question) }
    it { is_expected.to belong_to(:answer) }
  end

  describe '.by_answer' do
    let!(:answer) { create(:answer) }
    let!(:other_answer) { create(:answer) }

    let!(:correct_answer_sheet_choices) do
      [
        create(:answer_sheet_choice, answer: answer),
        create(:answer_sheet_choice, answer: answer)
      ]
    end

    before do
      create(:answer_sheet_choice, answer: other_answer)
      create(:answer_sheet_choice, answer: other_answer)
      create(:answer_sheet_choice, answer: other_answer)
    end

    subject { described_class.by_answer(answer) }

    it { is_expected.to match_array(correct_answer_sheet_choices) }
  end
end
