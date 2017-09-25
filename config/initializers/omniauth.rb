Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], {
    strategy_class: OmniAuth::Strategies::Facebook,
    provider_ignores_state: true,
  }
end