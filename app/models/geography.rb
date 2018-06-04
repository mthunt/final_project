class Geography < ApplicationRecord
  # Direct associations

  has_many   :location_geographies,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
