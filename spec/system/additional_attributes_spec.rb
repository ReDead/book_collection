require 'rails_helper'

RSpec.describe "AdditionalAttributes", type: :system do
  before do
    driven_by(:rack_test)
  end
  # it 'saves a book and displays flash notice' do
  #   visit '/books/new'

  #   fill_in 'book_rating', with: '5'

  #   click_on 'Create Book'

  #   expect(page).to have_content('Book successfully created')

  #   book = Book.order("id").last
  #   expect(book.rating).to eq('5')
  # end
end
