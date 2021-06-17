class BookListsController < ApplicationController
  def create
    @book_list = BookList.new(booklist_params)
    if @book_list.save
      redirect_to list_path(current_user.lists.first)
    else
      redirect_to root_path
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
