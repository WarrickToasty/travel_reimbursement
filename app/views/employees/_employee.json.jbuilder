json.extract! employee, :id, :email, :user_id, :sap_number, :department, :first_name, :last_name, :phone_number, :user_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
