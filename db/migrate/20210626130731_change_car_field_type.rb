class ChangeCarFieldType < ActiveRecord::Migration[6.0]
  def change
    rename_column :cars, :type, :body_type
  end
end
