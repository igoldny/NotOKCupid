class AddOrderColumnToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :order, :integer
    change_column_null :answers, :order, false
  end
end
