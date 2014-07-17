json.array!(@orders) do |order|
  json.extract! order, :id, :fechapedido, :enproceso, :cumplida, :entregado, :cancelado, :employee_id, :customer_id
  json.url order_url(order, format: :json)
end
