class Email < ActiveRecord::Base
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :address, 
    :presence   => true,
    :format     => { :with => email_regex}, 
    :uniqueness => true

  def self.all_mails
    if Rails.env == "development"
      return SITE_SETTINGS['test_emails']
    elsif Rails.env == "production"
      return self.find(:all).map{|e| e.address} 
    else
      return []
    end
  end
  
end
