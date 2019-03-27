class RemoveperiodsRemidfromreminder < ActiveRecord::Migration[5.2]
  def change
    remove_column :reminders, :periods_remind, :integer
  end
end
