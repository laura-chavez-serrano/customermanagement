class CreateAddresslogs < ActiveRecord::Migration[5.2]
  def change
    create_table :addresslogs do |t|
      t.integer :address_book_id
      t.string :address
      t.string :city
      t.date :anniversary

      t.timestamps
    end
    add_index :addresslogs, :address_book_id
  end
end
