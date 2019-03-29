class Changenames2 < ActiveRecord::Migration[5.2]
  def change
    
    rename_column :address_books, :Last_Name, :last_name
    rename_column :address_books, :First_Name, :first_name
  
  end
end
