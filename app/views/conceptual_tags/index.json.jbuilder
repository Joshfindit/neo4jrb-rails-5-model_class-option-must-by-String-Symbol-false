json.array!(@conceptual_tags) do |conceptual_tag|
  json.extract! conceptual_tag, :id, :name, :related_id, :tagged_products_id
  json.url conceptual_tag_url(conceptual_tag, format: :json)
end
