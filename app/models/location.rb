class Location < ApplicationRecord
  # Direct associations

  has_many   :location_weathers,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
