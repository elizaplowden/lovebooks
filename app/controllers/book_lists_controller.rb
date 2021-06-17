class BookListsController < ApplicationController
  def create
    @booklist = BookList.new(booklist_params)
    @book = Book.find(@booklist.book_id)
    respond_to do |format|
        format.js {}
    end
  end

  def delete
    @book_list = BookList.find(params[:id])
    @book_list.destroy
    redirect_to lists_path
  end

  private

  def booklist_params
    params.require(:book_list).permit(:book_id, :list_id)
  end
end
