json.extract! employee, :id, :email, :department, :first_name, :last_name, :phone_number, :username, :created_at, :updated_at
json.url employee_url(employee, format: :json)
