# Load the rails application
require File.expand_path('../application', __FILE__)

# Global configuration directives
Service::Application.configure do

  # Set up mailer default host
  mail_cfg = YAML::load(File.read(File.join(Rails.root, 'config', 'email.yml')))[Rails.env]
  config.action_mailer.default_url_options = { :host => mail_cfg['host'] }
  
end

# Initialize the rails application
Service::Application.initialize!
