class CreateProviderProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :provider_profiles do |t|
      t.string :first_nm
      t.string :last_nm
      t.string :nickname
      t.string :user_id
      t.date :birthday

      t.timestamps
    end
  end
end
