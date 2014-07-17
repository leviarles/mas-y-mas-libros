json.array!(@detailsales) do |detailsale|
  json.extract! detailsale, :id, :book_id, :cantidad, :sale_id
  json.url detailsale_url(detailsale, format: :json)
end
