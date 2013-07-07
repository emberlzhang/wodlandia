class HumanapiController < ApplicationController
  require 'oauth2'
  require 'humanapi'

  def index
    if not signed_in?
      redirect_to sign_in_path
      return
    end

    if params[:code]
      callback
    end

    if not session[:access_token]
      authorize
    else
      response = access_token.get('profile')
      render json: response.body
    end
  end

  def authorize
    redirect_to client.auth_code.authorize_url(:redirect_uri => redirect_uri)
  end

  def access_token
    OAuth2::AccessToken.new(client, session[:access_token])
  end

  def redirect_uri
    uri = URI.parse(request.url)
    uri.path = '/humanapi/callback'
    uri.query = nil
    uri.to_s
  end

  def callback
    new_token = client.auth_code.get_token(params[:code], :redirect_uri => redirect_uri)
    session[:access_token] = new_token.token
    current_user.update_attribute(:humanapi_token, new_token.token)
  end
end
