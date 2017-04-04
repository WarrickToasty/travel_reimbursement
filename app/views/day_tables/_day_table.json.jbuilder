json.extract! day_table, :id, :d8, :trip_number, :string, :breakfast, :lunch, :dinner, :breakfast_tip, :lunch_tip, :dinner_tip, :lodging, :business_calls, :transport_start, :transport_end, :mileage, :personal_car, :float, :rental_car, :float, :bus_train, :float, :tax, :airfare, :parking, :gasoline, :trip_id, :created_at, :updated_at
json.url day_table_url(day_table, format: :json)
