class AddperiodsRemidfromreminder < ActiveRecord::Migration[5.2]
  def change
    add_column :reminders, :periods_remind, :text
  end
end
