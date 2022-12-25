class AddNotNullConstraint < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:test, :title, false)
    change_column_null(:tests, :level, false)
    change_column_null(:tests, :category, false)
    change_column_null(:questions, :body, false)
    change_column_null(:answers, :body, false)
    change_column_null(:answers, :correct, false)
    change_column_null(:users, :name, false)
    change_column_null(:categories, :title, false)
  end
end
