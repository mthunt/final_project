class CreateLocationActivities < ActiveRecord::Migration
  def change
    create_table :location_activities do |t|
      t.integer :city_id
      t.integer :activity_id
      t.float :feature_rating

      t.timestamps

    end
  end
end
