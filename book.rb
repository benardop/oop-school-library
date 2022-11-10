require_relative './rental'

class Book
  attr_accessor :author, :title, :rental

  def initialize(author, title)
    @author = author
    @title = title
    @rental = []
  end

  def add_rental(date, person)
    new_rental = Ren.new(date, self, person)
    @rentals.push(new_rental)
  end
end
