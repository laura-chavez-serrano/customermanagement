class AddressBook < ApplicationRecord

has_many :networks, dependent: :destroy

# has many :apromotions, dependent: :destroy
validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
before_save do
    self.fullname = "#{first_name} #{last_name}"
  end

end
