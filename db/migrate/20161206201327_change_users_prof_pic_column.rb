class ChangeUsersProfPicColumn < ActiveRecord::Migration
  def change
    remove_column :users, :prof_pic_url
    add_column :users, :prof_pic_id, :integer, index: true
  end
end
