class Changenames4 < ActiveRecord::Migration[5.2]
  def change
    rename_column :address_books, :Status, :status 
  end
end
