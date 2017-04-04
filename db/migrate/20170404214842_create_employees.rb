class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :sap_number
      t.string :email
      t.string :department
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :username
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
