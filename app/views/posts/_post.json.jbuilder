json.extract! post, :id, :post_title, :post_name, :supervisor_id, :organization_unit_id, :post_level, :created_at, :updated_at
json.url post_url(post, format: :json)
