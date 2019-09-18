class Location < ApplicationRecord
  belongs_to :location_type
  belongs_to :organization
end
