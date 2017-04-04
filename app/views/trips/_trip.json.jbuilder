json.extract! trip, :id, :multi_page, :sap_number, :contact_person, :purpose, :place, :meeting_time, :meeting_date, :begin_time, :end_time, :begin_date, :end_date, :accompanied_by, :travel_estimate, :food_estimate, :lodging_estimate, :fee_estimate, :conference_fee, :created_at, :updated_at
json.url trip_url(trip, format: :json)
