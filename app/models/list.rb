class List < ApplicationRecord
  has_many :book_lists
  has_many :books, through: :book_lists
end
