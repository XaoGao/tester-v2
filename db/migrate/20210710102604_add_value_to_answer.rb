class AddValueToAnswer < ActiveRecord::Migration[6.1]
  def change
    add_column :answers, :value, :integer
  end
end
