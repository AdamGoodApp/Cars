class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.string :image
      t.decimal :price
      t.float :mph
      t.float :mpg
      t.string :car_type

      t.timestamps
    end
  end
end
