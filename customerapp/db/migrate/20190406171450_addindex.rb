class Addindex < ActiveRecord::Migration[5.2]
  def change
    add_index :apromotions, :type_promotion
  end
end
