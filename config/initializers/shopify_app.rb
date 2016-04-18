ShopifyApp.configure do |config|
  config.api_key = ENV['shopify_id']
  config.secret = ENV['shopify_token']
  config.scope = "read_orders, read_products"
  config.embedded_app = true
  
  puts "key: #{config.api_key}, token: #{config.secret}"
end


# require Rails.root.join('lib').join('extras').join('omniauth').join('strategies').join('shopify.rb').to_s
