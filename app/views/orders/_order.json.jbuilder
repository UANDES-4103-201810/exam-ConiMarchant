json.extract! order, :id, :pizza_id, :address, :payment_method, :phone, :created_at, :updated_at
json.url order_url(order, format: :json)
