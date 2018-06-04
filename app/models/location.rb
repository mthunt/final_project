class Location < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  has_many   :location_geographies,
             :dependent => :destroy

  has_many   :location_features,
             :class_name => "LocationActivity",
             :dependent => :destroy

  has_many   :location_weathers,
             :dependent => :destroy

  # Indirect associations

  has_many   :geographies,
             :through => :location_geographies,
             :source => :geography

  has_many   :features,
             :through => :location_features,
             :source => :feature

  # Validations

end
