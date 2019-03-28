class Deletephonetable < ActiveRecord::Migration[5.2]
  def change
    drop_table :phones
    add_column :address_books, :phonetype, :string
    add_column :address_books, :phonetype2, :string
    add_column :address_books, :phonetype3, :string
    add_column :address_books, :phonetype4, :string
  end
end
