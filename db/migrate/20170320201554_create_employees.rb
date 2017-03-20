class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :email
      t.integer :user_id
      t.integer :sap_number
      t.string :department
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
