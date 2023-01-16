class Book < ApplicationRecord
   
    validates :name, :bookAuthor,  presence: true
    validates :bookQuantity,
end