class RenameTypeFieldOfAdTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :advertisements, :type, :ad_type
  end
end
