json.array!(@employees) do |employee|
  json.extract! employee, :id, :nombre, :rfc, :direccion, :cargo, :telefono, :user_id
  json.url employee_url(employee, format: :json)
end
