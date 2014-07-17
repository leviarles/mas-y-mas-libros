json.array!(@detailorders) do |detailorder|
  json.extract! detailorder, :id, :book_id, :cantidad, :sale_id
  json.url detailorder_url(detailorder, format: :json)
end
