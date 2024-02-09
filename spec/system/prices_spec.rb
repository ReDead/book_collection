require 'rails_helper'

RSpec.describe "Prices", type: :system do
  before do
    driven_by(:rack_test)
  end
  it 'saves a book and displays flash notice' do
    visit '/books/new'

    fill_in 'book_price', with: 5.55

    click_on 'Create Book'

    expect(page).to have_content('Book successfully created')

    book = Book.order("id").last
    expect(book.price).to eq(5.55)
  end
end
