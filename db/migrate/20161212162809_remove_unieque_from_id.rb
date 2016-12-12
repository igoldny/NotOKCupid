class RemoveUniequeFromId < ActiveRecord::Migration
  def change
    remove_index :likes, :from_id
    add_index :likes, [:from_id, :to_id], unique: true
  end
end
