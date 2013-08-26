json.array!(@internet_reservations) do |internet_reservation|
  json.extract! internet_reservation, :res_time, :name, :num_people, :restaurant_id, :reservable_type, :phone_num, :source_website, :time_reserved
  json.url internet_reservation_url(internet_reservation, format: :json)
end
