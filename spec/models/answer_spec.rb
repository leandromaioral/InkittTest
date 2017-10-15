require 'rails_helper'

describe Answer, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:text) }
    it { is_expected.to validate_presence_of(:question) }

    context 'correct is `true`' do
      subject { build(:answer, correct: true) }

      it { is_expected.to validate_uniqueness_of(:correct).scoped_to(:question_id) }
    end

    context 'correct is `false`' do
      subject { build(:answer, correct: false) }

      it { is_expected.not_to validate_uniqueness_of(:correct) }
    end
  end

  describe 'relationships' do
    it { is_expected.to belong_to(:question) }
    it { is_expected.to have_many(:answer_sheet_choices) }
  end
end
