class RemindersController < ApplicationController
    def index
     @reminders =   Reminder.all
    end
    
    def edit
        @reminder = Reminder.find(params[:id])
    end
   
    def new
       
        @reminder = Reminder.new
    end

    def create
        
        @duplicate = Reminder.where(close_type: params[:close_type])
        
        if @duplicate
            redirect_to new_reminder_path, notice: 'Reminder already exist'
        else
            @reminder = Reminder.new(reminder_params)
            if @reminder.save 
                redirect_to reminders_path 
                
            else
                redirect_to new_reminder_path, notice: 'Error creating record'
            end
        end
    end
    def update
        @reminder = Reminder.find(params[:id])
       
        if @reminder.update(reminder_params)
          redirect_to reminders_path
        else
          render 'edit'
        end
      end
      def destroy
        @reminder = Reminder.find(params[:id])
        @reminder.destroy
       
        redirect_to reminders_path
      end
    private
        def reminder_params
            params.require(:reminder).permit(:close_type, :periods_remind)
        end
end
