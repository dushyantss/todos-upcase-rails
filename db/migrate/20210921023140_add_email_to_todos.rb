class AddEmailToTodos < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :email, :string, null: false
  end
end
