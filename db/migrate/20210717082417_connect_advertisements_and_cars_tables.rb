class ConnectAdvertisementsAndCarsTables < ActiveRecord::Migration[6.0]
  def change
    add_column :advertisements, :body_type, :string
    add_column :advertisements, :brand, :string
    add_column :advertisements, :model, :string
    add_column :advertisements, :price, :integer
    add_column :advertisements, :year, :integer
    add_column :advertisements, :country, :string
    add_column :advertisements, :condition, :string
    add_column :advertisements, :fuel_type, :string
    add_column :advertisements, :engine_capacity, :float
    add_column :advertisements, :color, :string
    add_column :advertisements, :pictures, :json
  end
end
