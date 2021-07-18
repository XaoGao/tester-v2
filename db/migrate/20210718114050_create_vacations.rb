class CreateVacations < ActiveRecord::Migration[6.1]
  def change
    create_table :vacations do |t|
      t.datetime :start
      t.datetime :end
      t.integer :number_of_days
      t.references :user
      t.timestamps
    end
  end
end
