class CreateSkips < ActiveRecord::Migration
  def change
    create_table :skips do |t|
      t.integer :user_id, null: false
      t.integer :question_id, null: false

      t.timestamps null: false
    end
  end
end
