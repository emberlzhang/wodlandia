require 'oauth2'

def client
  OAuth2::Client.new(ENV['HUMANAPI_CLIENT_ID'], ENV['HUMANAPI_CLIENT_SECRET'], site: ENV['HUMANAPI_SITE'] || 'https://user.humanapi.co')
end
