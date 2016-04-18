Rails.application.config.middleware.use OmniAuth::Builder do
  provider :shopify,
    ENV['shopify_id'],
    ENV['shopify_token'],
    scope: ShopifyApp.configuration.scope
end
