class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :middle_name, null: false
      t.boolean :lock, null: false
      t.string :document_number, null: false
      t.references :current_doctor, references: :user, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
