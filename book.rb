require_relative './rental'

class Book
  attr_accessor :author, :title, :rental

  def initialize(author, title)
    @author = author
    @title = title
    @rentals = []
  end

  def add_rental(date, person)
    new_rental = Rental.new(date, self, person)
    @rentals.push(new_rental)
  end
end
