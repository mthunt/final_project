class CreateLocationWeathers < ActiveRecord::Migration
  def change
    create_table :location_weathers do |t|
      t.integer :location_id
      t.string :month
      t.integer :temperature
      t.string :weather

      t.timestamps

    end
  end
end
