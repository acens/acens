class CreatePortfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :subtitle
      t.text :description
      t.string :client_name
      t.attachment :banner

      t.timestamps
    end
  end
end
