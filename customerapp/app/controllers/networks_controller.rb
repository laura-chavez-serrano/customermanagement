class NetworksController < ApplicationController
    def index
        @networks = Network.where(address_book_id: params[:address_book_id])
    end

    def new
          
        @network = Network.new
    end

    def create
        
        
            @network = Network.new(network_params)
            if @network.save 
              address = @network.address_book_id
                redirect_to address_book_networks_path(address)
                
            else
                redirect_to new 
            end
       
    end
    def edit
      @network = Network.find(params[:id])
      @address_book = AddressBook.find(params[:address_book_id])
  end
    def update
        @network = Network.find(params[:id])
       
        if @network.update(network_params)
          address = @network.address_book_id
                redirect_to address_book_networks_path(address)
        else
          render 'edit'
        end
      end
      def destroy
        @network = Network.find(params[:id])
           @network.destroy
          
           redirect_to {|params| "/address_books/#{params[:address_book_id].pluralize}/networks"}
         end
       private
           def network_params
               params.require(:network).permit(
                :reference_name,
                :email_phone,
                :anniversary,
                :address_book_id,
                :kind_relationship
                   )
           end  
end
