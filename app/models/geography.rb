class Geography < ApplicationRecord
  # Direct associations

  has_many   :location_geographies,
             :dependent => :destroy

  # Indirect associations

  has_many   :locations,
             :through => :location_geographies,
             :source => :location

  # Validations

end
