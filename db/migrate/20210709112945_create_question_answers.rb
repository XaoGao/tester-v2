class CreateQuestionAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :question_answers do |t|
      t.references :question
      t.references :answer
      t.references :patient
      t.references :testing
      t.timestamps
    end
  end
end
