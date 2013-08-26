json.array!(@phone_reservations) do |phone_reservation|
  json.extract! phone_reservation, :res_time, :name, :num_people, :restaurant_id, :reservable_type, :phone_num
  json.url phone_reservation_url(phone_reservation, format: :json)
end
