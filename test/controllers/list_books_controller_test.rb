require "test_helper"

class ListBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get list_books_create_url
    assert_response :success
  end

  test "should get delete" do
    get list_books_delete_url
    assert_response :success
  end
end
