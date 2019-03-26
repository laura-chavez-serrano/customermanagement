class Phone < ApplicationRecord
  belongs_to :address_book
  enum phone_number_type: [:home, :office, :mobile, :fax]

end
