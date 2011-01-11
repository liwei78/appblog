class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_locale
  
  def set_locale
    if Rails.env == "development"
      # if params[:locale] is nil then I18n.default_locale will be used
      I18n.locale = params[:locale]
    end
    if Rails.env == "production"
      logger.debug "* Accept-Language: #{request.env['HTTP_ACCEPT_LANGUAGE']}"
      I18n.locale = extract_locale_from_accept_language_header
      logger.debug "* Locale set to '#{I18n.locale}'"
    end
  end
  
  private
  def extract_locale_from_accept_language_header
    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  end
  
end
