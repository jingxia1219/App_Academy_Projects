class CreateCar < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :make
      t.integer :year
      t.string :color
      t.integer :owner_id, null: false
      t.timestamps
    end
  end
end
