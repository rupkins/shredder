require 'openid/store/filesystem'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_apps, OpenID::Store::Filesystem.new('./tmp'), :name => 'gwemail',:domain => 'email.gwu.edu'
end
