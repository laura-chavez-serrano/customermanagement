class CreateNetworks < ActiveRecord::Migration[5.2]
  def change
    create_table :networks do |t|
      t.string :reference_name
      t.string :email_phone
      t.date :date_reference
      t.integer :address_book_id

      t.timestamps
    end
    add_index :networks, :address_book_id
  end
end
