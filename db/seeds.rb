# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BookList.destroy_all
List.destroy_all
Book.destroy_all
User.destroy_all

user = User.create( email: "test@test.com", password: '123456')

# list = List.new(name:"Great Books")
# list.user_id = user.id
# list.save

books = [{ title: 'GOLDEN GIRL', author: 'Elin Hilderbrand', book_image: 'https://storage.googleapis.com/du-prd/books/images/9780316420082.jpg', isbn13: 9780316420082 },
{ title: 'MALIBU RISING', author: 'Taylor Jenkins Reid', book_image: 'https://storage.googleapis.com/du-prd/books/images/9781524798659.jpg', isbn13: 9781524798659 },
{ title: 'THE LAST THING HE TOLD ME', author: 'Laura Dave', book_image: 'https://storage.googleapis.com/du-prd/books/images/9781501171345.jpg',isbn13: 9781501171345 },
{ title: 'SOOLEY', author: 'John Grisham', book_image: 'https://storage.googleapis.com/du-prd/books/images/9780385547680.jpg', isbn13: 9780385547680 },
{ title: 'LEGACY', author: 'Nora Roberts', book_image: 'https://storage.googleapis.com/du-prd/books/images/9781250272935.jpg', isbn13: 9781250272935 },
{ title: 'THE OTHER BLACK GIRL', author: 'Zakiya Dalila Harris', book_image: 'https://storage.googleapis.com/du-prd/books/images/9781982160135.jpg', isbn13: 9781982160135 },
{ title: 'THE MIDNIGHT LIBRARY', author: 'Matt Haig', book_image: 'https://storage.googleapis.com/du-prd/books/images/9780525559474.jpg', isbn13: 9780525559474 },
{ title: 'PROJECT HAIL MARY', author: 'Andy Weir', book_image: 'https://storage.googleapis.com/du-prd/books/images/9780593135204.jpg', isbn13: 9780593135204 }]

books.each_with_index do |book, index|
  subject = Book.create!(title: book[:title], author: book[:author], image_url: book[:book_image], isbn: book[:isbn])
  #  if index == 0
  #   BookList.create(book_id: subject.id, list_id: list.id)
  # end
end
