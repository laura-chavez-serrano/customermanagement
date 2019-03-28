class AddressBook < ApplicationRecord

has_many :networks

# has many :apromotions
enum phonetype: [:home, :office, :mobile, :fax]
enum phonetype2: [:home, :office, :mobile, :fax]
enum phonetype3: [:home, :office, :mobile, :fax]
enum phonetype4: [:home, :office, :mobile, :fax]
end
