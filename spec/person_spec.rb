require 'rspec'
require './person'
require './book'

person = Person.new(15, 'bob')
book = Book.new('the title', 'the author')

RSpec.describe 'Person' do
  it 'public attributes are accessible' do
    expect(person.name).to eq('bob')
    expect(person.age).to be(15)
    expect(person.id).to be_between(1, 1000).inclusive
    expect(person.rentals).to be_empty
    expect(person.rentals).to be_truthy
  end

  it 'can_use_services returns true ' do
    expect(person.can_use_services?).to be_truthy
  end

  it 'correct_name returns the original name of a person' do
    expect(person.correct_name).to eq('bob')
  end

  it 'add_rental method adds a book to rentals' do
    person.add_rental('2022-10-14', book)
    expect(person.rentals.length).to be(2)
  end
end
