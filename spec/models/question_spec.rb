require 'rails_helper'

describe Question, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:text) }
  end

  describe 'relationships' do
    it { is_expected.to have_many(:answers) }
  end
end
