class BookList < ApplicationRecord
  belongs_to :book
  belongs_to :list

  validates :book, uniqueness: { scope: :list}
end
