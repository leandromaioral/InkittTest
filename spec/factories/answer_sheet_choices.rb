FactoryGirl.define do
  factory :answer_sheet_choice do
    answer_sheet
    question
    answer
  end
end
