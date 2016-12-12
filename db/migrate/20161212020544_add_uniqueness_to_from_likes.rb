class AddUniquenessToFromLikes < ActiveRecord::Migration
  def change
    add_index :likes, :from_id, :unique => true
    add_index :likes, :to_id
  end
end
