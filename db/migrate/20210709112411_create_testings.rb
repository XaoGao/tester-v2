class CreateTestings < ActiveRecord::Migration[6.1]
  def change
    create_table :testings do |t|
      t.references :doctor, references: :user, foreign_key: { to_table: :users }
      t.references :patient
      t.references :test
      t.timestamps
    end
  end
end
