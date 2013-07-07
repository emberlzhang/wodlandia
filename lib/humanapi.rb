require 'oauth2'

def client
  OAuth2::Client.new(ENV['HUMANAPI_CLIENT_ID'],
                     ENV['HUMANAPI_CLIENT_SECRET'],
                     site: 'https://api.humanapi.co/v1/human/',
                     token_url: 'https://user.humanapi.co/oauth/token',
                     authorize_url: 'https://user.humanapi.co/oauth/authorize')
end
