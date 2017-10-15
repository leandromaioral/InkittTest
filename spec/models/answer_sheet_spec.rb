require 'rails_helper'

RSpec.describe AnswerSheet, type: :model do
  describe 'relationships' do
    it { is_expected.to have_many(:answer_sheet_choices) }

    it do
      is_expected.to(
        accept_nested_attributes_for(
          :answer_sheet_choices
        ).allow_destroy(true)
         .limit(1)
         .update_only(true)
      )
    end
  end

  describe '#current_question' do
    context 'when there is a next question' do
      let!(:question1)   { create(:question, id: 1) }
      let!(:question2)   { create(:question, id: 2) }
      let(:answer_sheet) { build(:answer_sheet) }

      before do
        answer_sheet.answer_sheet_choices <<
          build(:answer_sheet_choice, question: question1)
      end

      subject { answer_sheet.current_question }

      it { is_expected.to eq(question2) }
    end

    context 'when there is no next question' do
      let(:answer_sheet) { build(:answer_sheet) }

      before do
        answer_sheet.answer_sheet_choices <<
          create(:answer_sheet_choice, question: build(:question))
      end

      subject { answer_sheet.current_question }

      it { is_expected.to be_nil }
    end
  end
end
