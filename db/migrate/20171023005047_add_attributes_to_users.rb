class AddAttributesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :picture, :attachment
    add_column :users, :position_held, :string
    add_column :users, :description, :text
    add_reference :users, :user_contact, foreign_key: true
  end
end
