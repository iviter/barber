class AddPictiresToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :pictures, :json
  end
end
