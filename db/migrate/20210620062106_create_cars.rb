class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :user_id

      t.timestamps
    end
  end
end
