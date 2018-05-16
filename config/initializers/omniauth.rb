Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['LIMELIGHT_GOOGLE_OAUTH2_CLIENT_ID'], ENV['LIMELIGHT_GOOGLE_OAUTH2_CLIENT_SECRET']
end
