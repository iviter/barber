class CreateParts < ActiveRecord::Migration[6.0]
  def change
    create_table :parts do |t|
      t.string :advertisement_id
      t.string :car_id

      t.timestamps
    end
  end
end
