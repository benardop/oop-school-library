require 'rspec'
require './rental'
require './book'
require './person'

person = Person.new(15, 'bob')
book = Book.new('the title', 'the author')
rental = Rental.new('2022-12-12', book, person)

RSpec.describe 'Rental ' do 
    it 'public attributes are accessible ' do 
        expect(rental.date).to eq('2022-12-12')
    end

    it 'both book and person intances are true valus ' do 
        expect(rental.person).to be_truthy
        expect(rental.book).to be_truthy
    end
end 