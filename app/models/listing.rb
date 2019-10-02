class Listing < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  validates :name, presence: true
  validates :listing_type, presence: true

  def coordinates
    [longitude, latitude]
  end

  def to_feature
    {
        "type": "Feature",
        "geometry": {
            "type": "Point",
            "coordinates": coordinates
        },
        "properties": {
            "id": id,
            "address": address
        }
    }
  end
end
