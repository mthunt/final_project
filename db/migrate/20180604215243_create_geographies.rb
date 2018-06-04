class CreateGeographies < ActiveRecord::Migration
  def change
    create_table :geographies do |t|
      t.string :geography

      t.timestamps

    end
  end
end
