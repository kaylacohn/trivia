class CreateAnsweredQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :answered_questions do |t|
      t.references :user, foreign_key: true
      t.references :question, foreign_key: true
      t.references :choice, foreign_key: true

      t.timestamps
    end
  end
end
