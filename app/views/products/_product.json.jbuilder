json.extract! product, :id, :code, :name, :income_date, :dispatch_date, :bill, :provider, :unit_value, :quantity, :iva_value, :total, :ubication, :created_at, :updated_at
json.url product_url(product, format: :json)
