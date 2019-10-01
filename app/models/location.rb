class Location < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  def coordinates
    [longitude, latitude]
  end

  def to_feature
    {
        "type": "Feature",
        "geometry": {
            "type": "Point",
            "coordinates": coordinates
        }
    }
  end
end
