class Promotion < ApplicationRecord
    has_many :apromotions, dependent: :destroy
end
