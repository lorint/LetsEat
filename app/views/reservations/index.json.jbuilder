json.array!(@reservations) do |reservation|
  json.extract! reservation, :res_time, :name, :num_people
  json.url reservation_url(reservation, format: :json)
end
