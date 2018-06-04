class Location < ApplicationRecord
  # Direct associations

  has_many   :location_geographies,
             :dependent => :destroy

  has_many   :location_features,
             :class_name => "LocationActivity",
             :foreign_key => "city_id",
             :dependent => :destroy

  has_many   :location_weathers,
             :dependent => :destroy

  # Indirect associations

  has_many   :features,
             :through => :location_features,
             :source => :feature

  # Validations

end
