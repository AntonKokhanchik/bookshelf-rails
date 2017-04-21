class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :http_authenticate

  private

  def http_authenticate
    return unless params[:validate] != 'true' #&& Rails.env.staging?

    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == 'admin'
    end
  end

end
