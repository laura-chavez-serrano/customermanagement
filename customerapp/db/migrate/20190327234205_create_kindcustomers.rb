class CreateKindcustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :kindcustomers do |t|
      t.string :kind_customer

      t.timestamps
    end
  end
end
