# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
HappyBirthday::Application.initialize!


ENV['SSL_CERT_FILE'] = 'C:/RailsInstaller/cacert.pem'

ENV['RAILS_ENV'] = 'production'
