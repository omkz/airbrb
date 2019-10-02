class Listing < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  validates :name, presence: true
  validates :listing_type, presence: true
end
