class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :advertisement_id

      t.timestamps
    end
  end
end
