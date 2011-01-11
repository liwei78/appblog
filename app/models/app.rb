class App < ActiveRecord::Base
  
  validates :title,
    :presence => true
  validates :desc,
    :presence => true
  
  has_attached_file :icon,
    :styles => { :original => "125x125" },
    :url => "/:class/:attachment/:id/:style_:basename.:extension",
    :path => ":rails_root/public/:class/:attachment/:id/:style_:basename.:extension",
    :default_url => "/images/sample_icon.png"
  
  
  def is_free?
    self.price == 0.00
  end
  
  def category_view
    SITE_SETTINGS["categories"][self.category][1]
  end
  
  def star_rate(r)
    r == 2
  end
  
end
