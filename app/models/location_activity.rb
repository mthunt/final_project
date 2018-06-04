class LocationActivity < ApplicationRecord
  # Direct associations

  belongs_to :feature,
             :class_name => "Activity",
             :foreign_key => "activity_id"

  belongs_to :city,
             :class_name => "Location"

  # Indirect associations

  # Validations

end
