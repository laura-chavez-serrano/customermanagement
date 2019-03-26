class CreatePromotions < ActiveRecord::Migration[5.2]
  def change
    create_table :promotions do |t|
      t.string :type_promotion
      t.integer :cost_promotion
      t.date :date_promotion
      t.integer :address_book_id

      t.timestamps
    end
    add_index :promotions, :address_book_id
  end
end
