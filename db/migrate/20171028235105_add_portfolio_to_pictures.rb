class AddPortfolioToPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :portfolio_id, :integer
  end
end
