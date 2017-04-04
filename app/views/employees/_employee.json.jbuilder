json.extract! employee, :id, :sap_number, :email, :department, :first_name, :last_name, :phone_number, :username, :user_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
