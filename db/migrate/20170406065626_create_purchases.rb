class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.date :date
      t.string :category
      t.string :tipe
      t.decimal :amount
      t.string :description
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
