class CreateTasks < ActiveRecord::Migration
  def up
    create_table :tasks do |t|
      t.text :title, null: false, default: ''
      t.timestamps
    end
  end
end
