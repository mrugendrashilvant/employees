json.extract! employee_detail, :id, :fName, :lName, :email, :role, :experience, :created_at, :updated_at
json.url employee_detail_url(employee_detail, format: :json)
