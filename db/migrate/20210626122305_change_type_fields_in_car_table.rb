class ChangeTypeFieldsInCarTable < ActiveRecord::Migration[6.0]
  def change
    change_column :cars, :price, :integer
    change_column :cars, :year, :integer
  end
end
