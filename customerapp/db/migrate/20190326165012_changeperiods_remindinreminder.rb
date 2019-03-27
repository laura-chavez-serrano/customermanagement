class ChangeperiodsRemindinreminder < ActiveRecord::Migration[5.2]
  def change
    def self.up
      change_column :remainders, periods_remind, :text
    end
   
    def self.down
      change_column :remainders, periods_remind, :integer
    end
    
  
  end
end
