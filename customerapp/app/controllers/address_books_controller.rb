class AddressBooksController < ApplicationController
    def index
        @address_books = AddressBook.all
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
               params.require(:address_book).permit(:Customer_Type, 
               :First_Name,
               :Last_Name,
               :Address,
               :City,
               :ZIP,
               :email,
               :phone,
               :phonetype,
               :phone2,
               :phone3,
               :phone4,
               :Status,
               :Category_Buyers,
               :Anniversary,
              :Comments)
           end  
end
