# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

if true or Rails.env == "development"
  i = 0
  20.times do
    App.create(
      :title    => "CRAZYFIST",
      :desc     => "    Crazy Fist是一位国内独立开发者首次开发作品，对于第一款游戏来说
      采用3D游戏还是很大胆的，而且画面美工水平不低，游戏玩法也不俗。
      要控制跑酷狂人不断的突破障碍物，如果遇到高墙游戏则要用拳头砸破，
      是矮墙，则要提前助跑跳过。
      站长亲自测试了一番，画面不错，但是动作性方面还有带提高，玩......",
      :app_type => 1,
      :category => 1,
      :download_url => "http://www.apple.com",
      :star => 7,
      :author => "liwei",  
      :publish_date => Time.now,
      :size => "120M"
    )
    i += 1
  end
end