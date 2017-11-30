OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '617874644389-vnkut5gtfpvp1104sugae69g9bsqhj01.apps.googleusercontent.com', 'AV7zgdRSuoDMR-UadBzJxPbl', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end