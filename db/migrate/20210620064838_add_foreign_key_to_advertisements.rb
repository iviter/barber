class AddForeignKeyToAdvertisements < ActiveRecord::Migration[6.0]
  def change
    add_column :advertisements, :car_id, :string
  end
end
