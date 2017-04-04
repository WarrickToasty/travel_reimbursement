class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :email
      t.string :department
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :username

      t.timestamps
    end
  end
end
