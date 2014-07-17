json.array!(@providers) do |provider|
  json.extract! provider, :id, :razonsocial, :direccion, :telefono, :correo
  json.url provider_url(provider, format: :json)
end
