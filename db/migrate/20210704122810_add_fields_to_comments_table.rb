class AddFieldsToCommentsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :title, :string
    add_column :comments, :body, :text
  end
end
