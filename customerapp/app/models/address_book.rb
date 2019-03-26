class AddressBook < ApplicationRecord
has many :phones
has many :networks
has many :promotions
end
