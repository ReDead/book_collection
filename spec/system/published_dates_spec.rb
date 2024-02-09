require 'rails_helper'

RSpec.describe "PublishedDates", type: :system do
  before do
    driven_by(:rack_test)
  end
  it 'saves a book and displays flash notice' do
    visit '/books/new'

    fill_in 'book_published', with: '2001-10-10'

    click_on 'Create Book'

    expect(page).to have_content('Book successfully created')

    book = Book.order("id").last
    expect(book.published).to eq(Date.new(2001, 10, 10))
  end
end
