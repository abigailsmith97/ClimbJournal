json.extract! location, :id, :latitude, :longitude, :address, :created_at, :updated_at
json.url location_url(location, format: :json)
