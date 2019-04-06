class AddtypePropertyToAddressBook < ActiveRecord::Migration[5.2]
  def change
    add_column :address_books, :type_property, :string
    rename_column :networks, :date_reference, :anniversary
    add_column :networks, :kind_relationship, :string
  end
end
