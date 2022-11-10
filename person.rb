require_relative './nameable'

class Person < Nameable
  attr_accessor :name, :age, :parent_permission
  attr_reader :id

  def initialize(age, name = 'Unkown', parent_permission = 'true')
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_service?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def of_age?
    @age >= 18
  end

  def add_rental(date, book)
    new_rental = Rent.new(date, book, self)
    @rentals.push(new_rental)
  end
end
