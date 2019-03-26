class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.string :kind_customer
      t.text :description
      t.boolean :alarm_calendar

      t.timestamps
    end
  end
end
