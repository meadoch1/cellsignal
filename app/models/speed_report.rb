class SpeedReport < ApplicationRecord
  belongs_to :location
  belongs_to :carrier
end
