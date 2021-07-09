class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.integer :level
      t.text :text
      t.references :question
      t.timestamps
    end
  end
end
