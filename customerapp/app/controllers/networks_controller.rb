class NetworksController < ApplicationController
    def index
        @networks = Network.where(address_book_id: params[:address_book_id])
    end
end
