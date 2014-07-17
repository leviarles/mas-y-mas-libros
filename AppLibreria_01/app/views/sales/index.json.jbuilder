json.array!(@sales) do |sale|
  json.extract! sale, :id, :fechatransaccion, :total, :descuento, :employee_id, :customer_id
  json.url sale_url(sale, format: :json)
end
