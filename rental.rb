class Rental
  attr_accessor :date, :person, :book

  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book

  # association
    person.rental << self
    book.rental << self
  end
end
