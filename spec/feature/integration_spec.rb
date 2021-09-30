# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid title' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'harshank'
    fill_in 'Price', with: '12'
    # "01/23/2021", :from => "book_published_date"
    fill_in 'Published date', with: '01/02/2021'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'valid author' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'harshank'
    fill_in 'Price', with: '12'
    fill_in 'Published date', with: '01/02/2021'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harshank')
  end

  scenario 'valid price' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'harshank'
    fill_in 'Price', with: '12'
    fill_in 'Published date', with: '01/02/2021'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('12')
  end

  scenario 'valid date' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'harshank'
    fill_in 'Price', with: '12'
    fill_in 'Published date', with: '01/02/2021'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2021-02-01')
  end
end