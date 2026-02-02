require "rails_helper"

RSpec.describe "Books", type: :system do
  before do
    driven_by(:rack_test)
  end

  it "adds a book author successfully and shows the correct flash notice" do
    visit books_path
    click_link "New book" 

    fill_in "Title", with: "Integrationtestbook"
    fill_in "Author", with: "Integrationtestauthor"
    fill_in "Price", with: 19
    fill_in "Date", with: "2024-01-01"
    click_button "Create Book"

    expect(page).to have_content("Book was successfully created.")
    expect(page).to have_content("Integrationtestbook")
  end

  it "does not save a book with a nonblank price and shows rainy-day flash notice" do
    visit books_path
    click_link "New book"

    fill_in "Title", with: "Integrationtestbook"
    fill_in "Author", with: "Integrationtestauthor"
    fill_in "Price", with: ""
    fill_in "Date", with: "2024-01-01"
    click_button "Create Book"

    expect(page).to have_content("You can't save a blank field.")
  end
end

