class RenameProviderProfileTable < ActiveRecord::Migration[6.0]
  def change
    rename_table :provider_profiles, :profiles
  end
end
