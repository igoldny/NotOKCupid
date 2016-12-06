class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :summary, :text
    add_column :users, :doing, :text
    add_column :users, :good_at, :text
    add_column :users, :favorites, :text
    add_column :users, :thinking, :text
    add_column :users, :friday, :text
    add_column :users, :message_if, :text
    add_column :users, :prof_pic_url, :string
  end
end
