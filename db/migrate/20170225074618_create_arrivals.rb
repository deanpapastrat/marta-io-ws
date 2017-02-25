class CreateArrivals < ActiveRecord::Migration[5.0]
  def change
    create_table :arrivals do |t|
      t.string :train_id
      t.integer :station_id
      t.integer :arrival_time

      t.timestamps
    end
  end
end
