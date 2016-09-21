class AddPasswordDigestToUser < ActiveRecord::Migration
  def up
    add_column :users, :password_digest, :string
    add_column :users, :username, :string
    add_column :profiles, :gender, :string
    add_column :profiles, :birth_year, :integer
    add_column :profiles, :first_name, :string
    add_column :profiles, :last_name, :string
    add_column :todo_lists, :list_name, :string
    add_column :todo_lists, :list_due_date, :date
    add_column :todo_items, :due_date, :date
    add_column :todo_items, :title, :string
    add_column :todo_items, :description, :text
  end
  
  def down
    remove_column :users, :password_digest
    remove_column :users, :username
    remove_column :profiles, :gender
    remove_column :profiles, :birth_year
    remove_column :profiles, :first_name
    remove_column :profiles, :last_name
    remove_column :todo_lists, :list_name
    remove_column :todo_lists, :list_due_date
    remove_column :todo_items, :due_date
    remove_column :todo_items, :title
    remove_column :todo_items, :description
  end
end
