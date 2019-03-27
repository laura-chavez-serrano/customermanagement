class AddressBook < ApplicationRecord
has_many :phones
has_many :networks
has_many :statuses
# has many :apromotions
end
