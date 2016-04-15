ShopifyApp.configure do |config|
  config.api_key = ENV['shopify_id']
  config.secret = ENV['shopify_token']
  config.scope = "read_orders, read_products"
  config.embedded_app = true
end
