class CreateTodoItems < ActiveRecord::Migration[7.0]
  def change
    create_table :todo_items do |t|
      t.string :content
      t.references :todolist, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
