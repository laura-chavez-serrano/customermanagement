class ApromotionsController < ApplicationController
    def index
        @apromotions = Apromotion.where(address_book_id: params[:address_book_id])
    end
    
end
