class BookListsController < ApplicationController
  def create
    @booklist = BookList.new(booklist_params)

    @book = Book.find(@booklist.book_id)
    respond_to do |format|
      if @booklist.save
        format.js {}
      else
        redirect_to root_path
      end
    end
  end

  def delete
  end

  private

  def booklist_params
    params.require(:book_list).permit(:book_id, :list_id)
  end
end
