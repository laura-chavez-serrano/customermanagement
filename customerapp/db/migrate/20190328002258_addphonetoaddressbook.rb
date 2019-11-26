class Addphonetoaddressbook < ActiveRecord::Migration[5.2]
  def change
    add_column :address_books, :phone, :string
    add_column :address_books, :phone2, :string
    add_column :address_books, :phone3, :string
    add_column :address_books, :phone4, :string
    add_column :address_books, :phonetype, :string
    add_column :address_books, :phonetype2, :string
    add_column :address_books, :phonetype3, :string
    add_column :address_books, :phonetype4, :string
    
  end
end
