class StatusesController < ApplicationController
    def index
        @statuses =   Status.all
       end
       
       def edit
           @status = Status.find(params[:id])
       end
      
       def new
          
           @status = Status.new
       end
   
       def create
           
               @status = Status.new(status_params)
               if @status.save 
                   redirect_to statuses_path 
                   
               else
                   redirect_to new_status_path, notice: 'Error creating record'
               end
           
       end
       def update
           @status = Status.find(params[:id])
          
           if @status.update(status_params)
             redirect_to statuses_path
           else
             render 'edit'
           end
         end
         def destroy
           @status = Status.find(params[:id])
           @status.destroy
          
           redirect_to statuses_path
         end
       private
           def status_params
               params.require(:status).permit(:kind_customer, :description, :alarm_calendar)
           end
end
