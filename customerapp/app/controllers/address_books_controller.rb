class AddressBooksController < ApplicationController
  before_action :calcula
  # require reminder
  helper_method :sort_column, :sort_direction

    def index
      if search_params[:search_term].present?
        @address_books = AddressBook.search_by_fullname_address_city(search_params[:search_term]).page(params[:page]).order("#{sort_column} #{sort_direction}")
    else
        @address_books = AddressBook.all.page(params[:page]).order("#{sort_column} #{sort_direction}")
    end 
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
          def calcula
            @alladdress = AddressBook.where(mailed: false)
            @alladdress.each do |a|
              @address_book = AddressBook.find(a.id)
              # reach for reminder periods using category field
              
              @address_book.update(mailed: true, comments: "test")
            end
          end
          def search_params
            params.permit(:search_term)
            end

            def sort_column
              sortable_columns.include?(params[:column]) ? params[:column] : "id"
          end
            
          def sortable_columns
              ["fullname", "address", "city", "date_anniversary", "status", "category"]
            end
      
          def sort_direction
              %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
          end
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
