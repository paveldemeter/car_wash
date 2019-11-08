class AddColumnToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :price, :decimal
    add_column :cars, :year, :integer
    add_column :cars, :suburb, :string
  end
end
