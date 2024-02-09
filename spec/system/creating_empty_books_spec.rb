require 'rails_helper'

RSpec.describe "CreatingEmptyBooks", type: :system do
  before do
    driven_by(:rack_test)
  end
  it 'saves a book and displays flash notice' do
    visit '/books/new'

    click_on 'Create Book'

    expect(page).to have_content('Book successfully created')

    book = Book.order("id").last
    expect(book.title).to eq('')
  end
end
