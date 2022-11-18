require 'rspec'
require './book'
require './person'

book = Book.new('the title', 'the author')
person = Person.new(12, 'user name')

RSpec.describe "Book" do 
    it 'properties are public and accessible' do 
        expect(book.title).to eq('the title')
        expect(book.author).to eq('the author')
    end
    it 'rentals array returns 0 before adding anything ' do 
        len = book.rentals.length
        expect(len).to be(0)
    end

    it 'add_rental method adds a newly created rental to the rentals array' do 
        book.add_rental('2022-12-12', person)
        len = book.rentals.length.to_i
        expect(len).to be(2)
    end
end