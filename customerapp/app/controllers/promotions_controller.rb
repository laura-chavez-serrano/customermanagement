class PromotionsController < ApplicationController
    def index
        @promotions = Promotion.all
        

       end
       
       def edit
           @promotion = Promotion.find(params[:id])
       end
      
       def new
          
           @promotion = Promotion.new
       end
   
       def create
           
           
               @promotion = Promotion.new(promotion_params)
               
               if @promotion.save 
                   redirect_to promotions_path 
                   
               else
                   redirect_to new_promotion_path, notice: 'Error creating record'
               end
          
       end
       def update
           @promotion = Promotion.find(params[:id])
          
           if @promotion.update(promotion_params)
             redirect_to promotions_path
           else
             render 'edit'
           end
         end
         def destroy
          
           @promotion = Promotion.find(params[:id])
           @promotion.destroy
          
           redirect_to promotions_path
         end
       private
           def promotion_params
               params.require(:promotion).permit(:type_promotion, :cost_promotion, :date_promotion)
           end  
end
