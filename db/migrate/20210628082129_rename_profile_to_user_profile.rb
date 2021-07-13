class RenameProfileToUserProfile < ActiveRecord::Migration[6.0]
  def change
    rename_table :profiles, :user_profiles
  end
end
