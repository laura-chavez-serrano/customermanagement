class AddfullnametoaddressBook < ActiveRecord::Migration[5.2]
  def change
    add_column :address_books, :fullname, :string
  end
end
