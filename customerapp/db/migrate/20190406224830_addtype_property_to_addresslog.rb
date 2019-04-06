class AddtypePropertyToAddresslog < ActiveRecord::Migration[5.2]
  def change
    add_column :addresslogs, :type_property, :string
  end
end
