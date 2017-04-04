class CreateDayTables < ActiveRecord::Migration[5.0]
  def change
    create_table :day_tables do |t|
      t.string :trip_number
      t.string :string
      t.float :breakfast
      t.float :lunch
      t.float :dinner
      t.float :breakfast_tip
      t.float :lunch_tip
      t.float :dinner_tip
      t.float :lodging
      t.float :business_calls
      t.string :transport_start
      t.string :transport_end
      t.float :mileage
      t.string :personal_car
      t.string :float
      t.string :rental_car
      t.string :float
      t.string :bus_train
      t.string :float
      t.float :tax
      t.float :airfare
      t.float :parking
      t.float :gasoline

      t.timestamps
    end
  end
end
