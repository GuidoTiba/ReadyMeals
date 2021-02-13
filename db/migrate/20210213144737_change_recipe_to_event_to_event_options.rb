class ChangeRecipeToEventToEventOptions < ActiveRecord::Migration[6.0]
  def change
    rename_column :event_options, :recipe_id, :event_id
 end
end
