# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

config.action_mailer.delivery_method = :smtp

config.action_mailer.smtp_settings = {
      address:              'smtp.gmail.com',
      port:                 587,
      domain:               '0.0.0.0:3000',
      user_name:            ENV['EMAIL'],
      password:             ENV['PASSWORD'],
      authentication:       'plain',
      enable_starttls_auto: true  }

  config.action_mailer.default_url_options = { :host => '0.0.0.0:3000' }

ActionMailer::Base.default_content_type = "text/html"