class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :email, null: true
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.string :gender, null: false, index: true
      t.string :sexuality, null: false, index: true
      t.integer :age, null: true, index: true
      t.string :location, null: true, index: true

      t.timestamps null: false
    end
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
    add_index :users, :session_token, unique: true
  end
end
