json.extract! contact, :id, :name, :email, :created_at, :updated_at
json.url api_v1_contact_path(contact, format: :json)
