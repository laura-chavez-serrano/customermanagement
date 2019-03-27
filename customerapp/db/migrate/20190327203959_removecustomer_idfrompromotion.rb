class RemovecustomerIdfrompromotion < ActiveRecord::Migration[5.2]
  def change
    remove_column :promotions, :address_book_id, :integer
  end
end
