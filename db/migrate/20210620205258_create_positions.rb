class CreatePositions < ActiveRecord::Migration[6.1]
  def change
    create_table :positions do |t|
      t.string :name, default: ''
      t.boolean :lock, default: false
      t.integer :level

      t.timestamps
    end
  end
end
