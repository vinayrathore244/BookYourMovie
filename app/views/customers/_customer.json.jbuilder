json.extract! customer, :id, :customer_name, :customer_mobile, :customer_email, :customer_address, :created_at, :updated_at
json.url customer_url(customer, format: :json)
