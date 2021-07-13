class AddFieldsToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :fuel_type, :string
    add_column :cars, :engine_capacity, :float
    add_column :cars, :color, :string
  end
end
