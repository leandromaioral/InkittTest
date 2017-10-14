require 'rails_helper'

describe Question, type: :model do
  it { is_expected.to validate_presence_of(:text) }
end
