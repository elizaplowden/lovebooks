class BookListsController < ApplicationController
  def create
    @BookList = BookList.new(booklist_params)
    if @BookList.save
      redirect_to list_path(current_user.lists.first)
    else
      redirect_to root_path
    end
  end

  def delete
  end

  private

  def booklist_params
    params.require(:book_list).permit(:book_id, :list_id)
  end
end
