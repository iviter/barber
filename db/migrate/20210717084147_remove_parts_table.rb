class RemovePartsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :parts
  end
end
