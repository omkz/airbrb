json.extract! listing, :id, :name, :type, :bedrom, :bathroom, :summary, :address, :is_tv, :is_kitchen, :is_air, :is_heating, :is_internet, :price, :latitude, :longitude, :user_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
