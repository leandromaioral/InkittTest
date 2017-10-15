class CreateAnswerSheetChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_sheet_choices do |t|
      t.references :answer_sheet, foreign_key: true
      t.references :question, foreign_key: true
      t.references :answer, foreign_key: true

      t.timestamps
    end
  end
end
