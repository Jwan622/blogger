class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|   #t refernces the table that was created
      t.string :title
      t.text :body
      
      t.timestamps null: false
    end
  end
end
