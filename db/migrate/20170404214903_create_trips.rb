class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :trip_number
      t.string :multi_page
      t.string :sap_number
      t.string :contact_person
      t.string :purpose
      t.string :place
      t.time :meeting_time
      t.date :meeting_date
      t.time :begin_time
      t.time :end_time
      t.date :begin_date
      t.date :end_date
      t.string :accompanied_by
      t.float :travel_estimate
      t.float :food_estimate
      t.float :lodging_estimate
      t.float :fee_estimate
      t.float :conference_fee
      t.float :banquet_fee
      t.float :dues
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
