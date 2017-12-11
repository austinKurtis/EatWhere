json.extract! restaurant, :id, :restaurant_name, :restaurant_location, :restaurant_desc, :restaurant_phone, :restaurant_price, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
