class LocationActivity < ApplicationRecord
  # Direct associations

  belongs_to :city,
             :class_name => "Location"

  # Indirect associations

  # Validations

end
