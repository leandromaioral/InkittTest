class CreateAnswerSheets < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_sheets do |t|
      t.timestamps
    end
  end
end
