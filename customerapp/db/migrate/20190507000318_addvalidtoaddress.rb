class Addvalidtoaddress < ActiveRecord::Migration[5.2]
  def change
    add_column :address_books, :mailed, :boolean, default: false
  end
end
