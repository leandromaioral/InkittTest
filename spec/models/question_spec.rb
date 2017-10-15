require 'rails_helper'

describe Question, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:text) }
  end

  describe 'relationships' do
    it { is_expected.to have_many(:answers) }
    it { is_expected.to have_many(:answer_sheet_choices) }
  end

  describe '#next' do
    let!(:question) { create(:question, id: 1) }
    let!(:next_question) { create(:question, id: 2) }

    subject { question.next }

    it { is_expected.to eq(next_question) }
  end

  describe '#previous' do
    let!(:previous_question) { create(:question, id: 1) }
    let!(:question) { create(:question, id: 2) }

    subject { question.previous }

    it { is_expected.to eq(previous_question) }
  end
end
