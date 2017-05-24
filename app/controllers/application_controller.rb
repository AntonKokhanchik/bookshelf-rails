class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :http_authenticate, :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    { locale: (I18n.locale unless I18n.locale == :ru) }.merge options
  end

  private

  def http_authenticate
    return unless params[:validate] != 'true' #&& Rails.env.staging?

    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == 'admin'
    end
  end

end
