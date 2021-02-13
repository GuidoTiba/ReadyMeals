class ChangeInstructionToInstructions < ActiveRecord::Migration[6.0]
  def change
    rename_column :recipes, :instruction, :instructions
 end
end
