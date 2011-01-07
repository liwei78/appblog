# Email settings
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.default_content_type = 'text/plain' # , 'text/html', 'multipart/mixed'
ActionMailer::Base.delivery_method = :smtp
# ActionMailer::Base.default_charset = "UTF8"
ActionMailer::Base.smtp_settings = {
  :address        => SITE_SETTINGS['mail']['address'],
  :port           => SITE_SETTINGS['mail']['port'],
  :domain         => SITE_SETTINGS['mail']['domain'],
  :authentication => SITE_SETTINGS['mail']['authentication'],
  :user_name      => SITE_SETTINGS['mail']['user_name'],
  :password       => SITE_SETTINGS['mail']['password']  
}

