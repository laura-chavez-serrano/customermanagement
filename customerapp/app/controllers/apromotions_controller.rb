class ApromotionsController < ApplicationController
    
    def index
        @apromotions = Apromotion.where(address_book_id: params[:address_book_id])
        
    end
    def show
          
    end
    def new
          
        @apromotion = Apromotion.new
    end

    def create
        
        
            @apromotion = Apromotion.new(apromotion_params)
            if @apromotion.save 
                address = @apromotion.address_book_id
                redirect_to promotions_path(address)
                
            else
                redirect_to new 
            end
       
    end
    def destroy
        @apromotion = Apromotion.find(params[:id])
        @apromotion.destroy
                address = @apromotion.address_book_id
                redirect_to promotions_path(address)
      end
    private
           def apromotion_params
            params.permit(:promotion_id, :address_book_id, :type_promotion, :id)
           end  
end
