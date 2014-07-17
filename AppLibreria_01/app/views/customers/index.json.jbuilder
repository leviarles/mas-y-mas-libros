json.array!(@customers) do |customer|
  json.extract! customer, :id, :nombre, :direcion, :telefono, :rfc
  json.url customer_url(customer, format: :json)
end
