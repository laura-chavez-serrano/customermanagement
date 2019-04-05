class Renameanniversary < ActiveRecord::Migration[5.2]
  def change
    rename_column :address_books, :anniversary, :date_anniversary
  end
end
