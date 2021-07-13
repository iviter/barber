class ChangeFieldType < ActiveRecord::Migration[6.0]
  def change
    change_column :advertisements, :car_id, :integer
  end
end
