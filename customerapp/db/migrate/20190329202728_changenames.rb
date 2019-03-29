class Changenames < ActiveRecord::Migration[5.2]
  def change
    
      rename_column :address_book, :Last_Name, :last_name
      rename_column :address_book, :First_Name, :first_name
    
  end
end
