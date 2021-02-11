# frozen_string_literal: true

class HomeController < AuthenticatedController
  include ShopifyApp::ScopesVerification

  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end
end
