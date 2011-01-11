class CreateApps < ActiveRecord::Migration
  def self.up
    create_table :apps do |t|
      t.string   :title
      t.text     :desc
      t.integer  :app_type # iphone, ipad, iphone+ipad
      t.integer  :category # game, social, soft
      t.integer  :star
      t.string   :author
      t.datetime :publish_date
      t.decimal  :price, :precision => 8, :scale =>2, :default=>0.00
      t.string   :download_url
      t.integer  :position, :default => 0
      t.string   :icon_file_name
      t.string   :icon_content_type
      t.integer  :icon_file_size
      t.datetime :icon_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :apps
  end
end
