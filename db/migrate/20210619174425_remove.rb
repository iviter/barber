class Remove < ActiveRecord::Migration[6.0]
  def change
    remove_column :admins, :type
    remove_column :providers, :type
  end
end
