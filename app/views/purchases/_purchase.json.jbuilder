json.extract! purchase, :id, :date, :category, :tipe, :amount, :description, :trip_id, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
