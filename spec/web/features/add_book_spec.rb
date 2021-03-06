require 'features_helper'

RSpec.describe 'Add a book' do

  it 'displays list of errors when params contains errors' do
    visit '/books/new'

    within 'form#book-form' do
      click_button 'Create'
    end

    expect(current_path).to eq('/books')

    expect(page).to have_current_path('There was a problem with your submission')
    expect(page).to have_content('Title must be filled')
    expect(page).to have_content('Author must be filled')
  end
end