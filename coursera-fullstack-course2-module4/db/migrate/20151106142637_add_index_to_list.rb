class AddIndexToList < ActiveRecord::Migration
  def change
    add_reference :todo_lists, :user, :index => true, :foreign_key => true
    add_reference :todo_items, :user, :index => true, :foreign_key => true
    add_reference :todo_items, :todo_list, :index => true, :foreign_key => true
  end
end
