class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :title, null: false, default: ''
      t.timestamps
    end
  end
end
