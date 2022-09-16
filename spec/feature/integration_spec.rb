# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Title', with: 'harry potter'
        fill_in 'Author', with: 'JK Rowling'
        fill_in 'Price', with: 9.99
        fill_in 'Published date', with: '2011-08-15'
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('harry potter')
        expect(page).to have_content('JK Rowling')
        expect(page).to have_content('9.99')
        expect(page).to have_content('08/15/2011')
    end
end