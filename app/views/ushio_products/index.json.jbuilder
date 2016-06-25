json.array!(@ushio_products) do |ushio_product|
  json.extract! ushio_product, :id, :name, :description, :sku, :tagged_id, :related_id
  json.url ushio_product_url(ushio_product, format: :json)
end
