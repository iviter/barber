class AddAttributesToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :type, :string
    add_column :cars, :brand, :string
    add_column :cars, :model, :string
    add_column :cars, :price, :string
    add_column :cars, :year, :string
    add_column :cars, :country, :string
    add_column :cars, :condition, :string
  end
end
