# Google's OAuth2 docs. Make sure you are familiar with all the options
# before attempting to configure this gem.
# https://developers.google.com/accounts/docs/OAuth2Login
#require 'openid/store/filesystem'
Rails.application.config.middleware.use OmniAuth::Builder do
  # Default usage, this will give you offline access and a refresh token
  # using default scopes 'userinfo.email' and 'userinfo.profile'
  #
  provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET'], {
    
      :name => "google",
      :scope => "https://www.googleapis.com/auth/userinfo.profile",
      :prompt => "select_account",
      :image_aspect_ratio => "square",
      :image_size => 50
  }
  #provider :google_oauth2,'403673772230-fsh86o1tvcaan3ri598ema643c8amjo6.apps.googleusercontent.com','7FZGjXRAsEbEMAYceCufuTHs',
   # { access_type: "offline", approval_prompt: "force", name: "youtube" }
    
  
  #provider :youtube, '403673772230.apps.googleusercontent.com', '7FZGjXRAsEbEMAYceCufuTHs'

  # Manual setup for offline access with a refresh token.
  # The prompt must be set to 'consent'
  #
  # provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET'], {
  #   :access_type => 'offline',
  #   :prompt => 'consent'
  # }

  # Custom scope supporting youtube. If you are customizing scopes, remember
  # to include the default scopes 'userinfo.email' and 'userinfo.profile'
  #
  # provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET'], {
  #   :scope => 'http://gdata.youtube.com,userinfo.email,userinfo.profile,plus.me'
  # }

  # Custom scope for users only using Google for account creation/auth and do not require a refresh token.
  #
  # provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET'], {
  #   :access_type => 'online',
  #   :prompt => ''
  # }
 end