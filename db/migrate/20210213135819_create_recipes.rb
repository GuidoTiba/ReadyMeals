class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :instruction
      t.text :details

      t.timestamps
    end
  end
end
