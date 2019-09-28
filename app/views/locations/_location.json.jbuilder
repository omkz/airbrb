json.extract! location, :id, :address, :latitude, :longitude, :created_at, :updated_at
json.url location_url(location, format: :json)
