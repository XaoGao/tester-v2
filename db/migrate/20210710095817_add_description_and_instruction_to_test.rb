class AddDescriptionAndInstructionToTest < ActiveRecord::Migration[6.1]
  def change
    add_column :tests, :description, :text
    add_column :tests, :instruction, :text
  end
end
