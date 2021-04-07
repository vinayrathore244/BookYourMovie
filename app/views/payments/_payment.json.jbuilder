json.extract! payment, :id, :amount, :customer, :date, :Time, :created_at, :updated_at
json.url payment_url(payment, format: :json)
