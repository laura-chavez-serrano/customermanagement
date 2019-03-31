class CreateApromotions < ActiveRecord::Migration[5.2]
  def change
    create_table :apromotions do |t|
      t.string :type_promotion
      t.integer :promotion_id
      t.integer :address_book_id
      t.date :assigned_date
      t.integer :unit_cost
      t.boolean :active

      t.timestamps
    end
    add_index :apromotions, :address_book_id
  end
end
