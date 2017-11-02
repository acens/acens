class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.attachment :photo

      t.timestamps
    end
  end
end
