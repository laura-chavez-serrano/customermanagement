class CreateReminders < ActiveRecord::Migration[5.2]
  def change
    create_table :reminders do |t|
      t.string :close_type
      t.integer :periods_remind

      t.timestamps
    end
  end
end
