class AddTypeToAdmins < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :type, :string
  end
end
