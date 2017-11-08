class AddAttributesToPortfolio < ActiveRecord::Migration[5.1]
  def change
    add_column :portfolios, :type_service_id, :integer
    add_column :portfolios, :link, :string
  end
end
