Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, ENV['LINKEDIN_KEY'], ENV['LINKEDIN_SECRET'], scope: 'r_fullprofile r_emailaddress', fields: %w(id first-name last-name maiden-name formatted-name location picture-url industry num-connections date-of-birth skills email-address), :client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}}
end
OmniAuth.config.logger = Rails.logger
