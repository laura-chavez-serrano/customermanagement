class CreateAddressBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :address_books do |t|
      t.string :Customer_Type
      t.string :First_Name
      t.string :Last_Name
      t.string :Address
      t.string :City
      t.integer :ZIP
      t.string :email
      t.string :Status
      t.string :Category_Buyers
      t.date :Anniversary
      t.text :Comments

      t.timestamps
    end
  end
end
