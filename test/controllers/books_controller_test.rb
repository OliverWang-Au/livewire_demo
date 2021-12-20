require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post books_url, params: { book: { ap_: @book.ap_, avatar_: @book.avatar_, da_te_: @book.da_te_, fund_name_: @book.fund_name_, gsi_: @book.gsi_, m_fund_: @book.m_fund_, mf_: @book.mf_, mf_2_: @book.mf_2_, mi_: @book.mi_, month_1_: @book.month_1_, shares_: @book.shares_, si_: @book.si_, tcr_: @book.tcr_, year_: @book.year_, year_1_: @book.year_1_, years_3_: @book.years_3_, years_5_: @book.years_5_ } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { ap_: @book.ap_, avatar_: @book.avatar_, da_te_: @book.da_te_, fund_name_: @book.fund_name_, gsi_: @book.gsi_, m_fund_: @book.m_fund_, mf_: @book.mf_, mf_2_: @book.mf_2_, mi_: @book.mi_, month_1_: @book.month_1_, shares_: @book.shares_, si_: @book.si_, tcr_: @book.tcr_, year_: @book.year_, year_1_: @book.year_1_, years_3_: @book.years_3_, years_5_: @book.years_5_ } }
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end
end
