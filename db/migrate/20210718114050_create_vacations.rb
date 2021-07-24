class CreateVacations < ActiveRecord::Migration[6.1]
  def change
    create_table :vacations do |t|
      t.datetime :from
      t.datetime :by
      t.integer :number_of_days
      t.references :user
      t.timestamps
    end
  end
end
