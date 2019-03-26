class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :number
      t.integer :phone_number_type
      t.integer :address_book_id

      t.timestamps
    end
    add_index :phones, :address_book_id
  end
end
