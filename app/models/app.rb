class App < ActiveRecord::Base
  
  validates :title,
    :presence => true
  validates :desc,
    :presence => true
  
  has_attached_file :icon,
    :styles => { :original => "82x82" },
    :url => "/:class/:attachment/:id/:style_:basename.:extension",
    :path => ":rails_root/public/:class/:attachment/:id/:style_:basename.:extension",
    :default_url => "/images/sample_icon.png"
  
  
  def has_youtube?
    !self.youtube_url.blank?
  end
  
end
