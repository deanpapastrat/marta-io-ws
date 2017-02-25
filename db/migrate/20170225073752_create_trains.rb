class CreateTrains < ActiveRecord::Migration[5.0]
  def change
    create_table :trains do |t|
      t.string :train_id
      t.string :direction
      t.string :line_name
      t.string :current_station_id
      t.string :integer
      t.integer :destination_station_id
      t.integer :origin_station_id
      t.integer :previous_station_id
      t.string :status
      t.integer :time_to_station

      t.timestamps
    end
  end
end
