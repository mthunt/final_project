class LocationGeography < ApplicationRecord
  # Direct associations

  belongs_to :geography

  belongs_to :location

  # Indirect associations

  # Validations

end
