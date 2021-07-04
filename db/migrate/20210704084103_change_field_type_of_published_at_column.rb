class ChangeFieldTypeOfPublishedAtColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :advertisements, :published_at, :datetime
  end
end
