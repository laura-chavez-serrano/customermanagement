class AddressBook < ApplicationRecord

has_many :networks, dependent: :destroy

# has many :apromotions, dependent: :destroy
#add FullName field in table?
before_save do
    self.fullname = "#{first_name} #{last_name}"
  end

end
