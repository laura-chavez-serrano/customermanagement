class AddcloseTypetotoreminders < ActiveRecord::Migration[5.2]
  def change
    add_index :reminders, :close_type, unique: true
  end
end
