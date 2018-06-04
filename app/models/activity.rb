class Activity < ApplicationRecord
  # Direct associations

  has_many   :location_features,
             :class_name => "LocationActivity",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
