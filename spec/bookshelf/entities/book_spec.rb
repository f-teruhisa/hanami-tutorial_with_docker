RSpec.describe Book do
  it 'can be initialized with atributes' do
    book = Book.new(title: 'Refactoring')
    expect(book.title).to eq('Refactoring')
  end
end