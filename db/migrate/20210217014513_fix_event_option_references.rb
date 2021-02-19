class FixEventOptionReferences < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key "event_options", "recipes", column: "event_id"
    add_foreign_key :event_options, :events
  end
end
