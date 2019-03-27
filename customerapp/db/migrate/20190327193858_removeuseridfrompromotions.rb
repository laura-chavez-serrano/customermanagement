class Removeuseridfrompromotions < ActiveRecord::Migration[5.2]
  def change
    remove_index :promotions, column: :address_book_id
  end
end
