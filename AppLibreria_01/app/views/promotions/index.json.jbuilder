json.array!(@promotions) do |promotion|
  json.extract! promotion, :id, :tipopromocion, :medio, :descripcion, :employee_id, :customer_id
  json.url promotion_url(promotion, format: :json)
end
