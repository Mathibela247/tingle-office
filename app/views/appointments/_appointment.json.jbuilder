json.extract! appointment, :id, :post_id, :user_id, :start_date, :end_date, :appointment_status_id, :isactive, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
