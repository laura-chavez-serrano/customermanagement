class AddresslogsController < ApplicationController
    def index
        @logs = Addresslog.where(address_book_id: params[:address_book_id])
    end

end
