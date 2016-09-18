json.extract! order, :id, :name, :quantity, :created_at, :updated_at
json.url order_url(order, format: :json)