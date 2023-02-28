json.extract! appointment_status, :id, :name, :created_at, :updated_at
json.url appointment_status_url(appointment_status, format: :json)
