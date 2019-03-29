class Changenames3 < ActiveRecord::Migration[5.2]
  def change
    rename_column :address_books, :Customer_Type, :customer_type
    rename_column :address_books, :Address, :address
    rename_column :address_books, :City, :city
    rename_column :address_books, :ZIP, :zip
    rename_column :address_books, :Category_Buyers, :category
    rename_column :address_books, :Anniversary, :anniversary
    rename_column :address_books, :Comments, :comments 
    
  end
end
