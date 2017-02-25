class AddLineidsToStation < ActiveRecord::Migration[5.0]
  def change
  	add_column :stations, :line_ids, :string
  end
end
