require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "creating a Book" do
    visit books_url
    click_on "New Book"

    fill_in "Ap ", with: @book.ap_
    fill_in "Avatar ", with: @book.avatar_
    fill_in "Da te ", with: @book.da_te_
    fill_in "Fund name ", with: @book.fund_name_
    fill_in "Gsi ", with: @book.gsi_
    fill_in "M fund ", with: @book.m_fund_
    fill_in "Mf ", with: @book.mf_
    fill_in "Mf 2 ", with: @book.mf_2_
    fill_in "Mi ", with: @book.mi_
    fill_in "Month 1 ", with: @book.month_1_
    fill_in "Shares ", with: @book.shares_
    fill_in "Si ", with: @book.si_
    fill_in "Tcr ", with: @book.tcr_
    fill_in "Year ", with: @book.year_
    fill_in "Year 1 ", with: @book.year_1_
    fill_in "Years 3 ", with: @book.years_3_
    fill_in "Years 5 ", with: @book.years_5_
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "updating a Book" do
    visit books_url
    click_on "Edit", match: :first

    fill_in "Ap ", with: @book.ap_
    fill_in "Avatar ", with: @book.avatar_
    fill_in "Da te ", with: @book.da_te_
    fill_in "Fund name ", with: @book.fund_name_
    fill_in "Gsi ", with: @book.gsi_
    fill_in "M fund ", with: @book.m_fund_
    fill_in "Mf ", with: @book.mf_
    fill_in "Mf 2 ", with: @book.mf_2_
    fill_in "Mi ", with: @book.mi_
    fill_in "Month 1 ", with: @book.month_1_
    fill_in "Shares ", with: @book.shares_
    fill_in "Si ", with: @book.si_
    fill_in "Tcr ", with: @book.tcr_
    fill_in "Year ", with: @book.year_
    fill_in "Year 1 ", with: @book.year_1_
    fill_in "Years 3 ", with: @book.years_3_
    fill_in "Years 5 ", with: @book.years_5_
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "destroying a Book" do
    visit books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book was successfully destroyed"
  end
end
