# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
TheVoiceBox::Application.initialize!

# config.action_mailer.default_url_options = { :host => '0.0.0.0:80' }

require 'tlsmail'    
Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.smtp_settings = {
  :enable_starttls_auto => true,  
  :address            => 'smtp.gmail.com',
  :port               => 587,
  :tls                => true,
  :domain             => 'gmail.com', #you can also use google.com
  :authentication     => :plain,
  :user_name          => 'noreply.thevoicebox@gmail.com',
  :password           => 'asdfPSRK312'
}