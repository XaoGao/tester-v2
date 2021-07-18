class CreateMedicalRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_records do |t|
      t.references :patient
      t.references :doctor, references: :user, foreign_key: { to_table: :users }
      t.text :content

      t.timestamps
    end
  end
end
