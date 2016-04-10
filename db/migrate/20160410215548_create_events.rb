class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :venue_id
      t.integer :band_id
      t.date :date
      t.time :time

      t.timestamps null: false
    end
  end
end
