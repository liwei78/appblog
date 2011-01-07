class CreateApps < ActiveRecord::Migration
  def self.up
    create_table :apps do |t|
      t.string :title
      t.text   :desc
      t.string :app_type
      t.string :category
      t.string :itunes_url
      t.string :youtube_url
      t.integer :position, :default => 0
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
