class RemovePinterestFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :pinterest
  end
end
