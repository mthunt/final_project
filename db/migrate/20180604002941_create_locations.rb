class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city_name
      t.string :state_name
      t.string :country_name
      t.integer :lat
      t.integer :long

      t.timestamps

    end
  end
end
