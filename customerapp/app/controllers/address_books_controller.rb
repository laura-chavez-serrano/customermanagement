class AddressBooksController < ApplicationController
    def index
        @address_books = AddressBook.all
       end
       #details of address 
      def show
        
      @address = AddressBook.find(params[:id])
      end
       def edit
           @address_book = AddressBook.find(params[:id])
       end
      
       def new
          
           @address_book = AddressBook.new
       end
   
       def create
           
           
               @address_book = AddressBook.new(address_book_params)
               if @address_book.save 
                   redirect_to address_books_path 
                   
               else
                   redirect_to new_address_book_path, notice: 'Error creating record'
               end
          
       end
       def update
           @address_book = AddressBook.find(params[:id])
          # add code to identify if params:address is diferent from the one
          # in the current record and create a record in log to keep previous information
          if @address_book.address != address_book_params["address"]
           @log = Addresslog.new
            @log.anniversary = @address_book.date_anniversary
            @log.city = @address_book.city
            @log.address = @address_book.address
            @log.address_book_id = @address_book.id
            @log.save
          end

           if @address_book.update(address_book_params)
             redirect_to address_books_path
           else
             render 'edit'
           end
         end
         def destroy
           @address_book = AddressBook.find(params[:id])
           @address_book.destroy
          
           redirect_to address_books_path
         end
       private
           def address_book_params
               params.require(:address_book).permit(:customer_type, 
               :first_name,
               :last_name,
               :type_property,
               :address,
               :city,
               :zip,
               :email,
               :phone,
               :phonetype,
               :phone2,
               :phonetype2,
               :phone3,
               :phonetype3,
               :phone4,
               :phonetype4,
               :status,
               :category,
               :date_anniversary,
              :comments)
           end  
end
