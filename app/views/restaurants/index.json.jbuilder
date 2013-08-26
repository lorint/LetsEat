json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :name, :capacity, :max_time
  json.url restaurant_url(restaurant, format: :json)
end
