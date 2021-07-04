class AddDescriptionToAds < ActiveRecord::Migration[6.0]
  def change
    add_column :advertisements, :description, :text
  end
end
