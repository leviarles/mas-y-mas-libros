

json.array!(@books) do |book|
  json.extract! book, :id, :isbn, :nombrelibro, :autor, :editorial, :precio, :category_id, :provider_id
  json.url book_url(book, format: :json)
end
