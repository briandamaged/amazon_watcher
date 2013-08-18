json.array!(@products) do |product|
  json.extract! product, :title, :url, :list_price, :current_price, :rating, :reviews
  json.url product_url(product, format: :json)
end
