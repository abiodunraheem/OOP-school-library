require_relative './nameable.rb'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name: 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def of_age?
    @age >= 18
  end

  # metthod to return correct_name
  def correct_name
    @name
  end
  # Public method can_use_services? that returns true if person is of age or if they have permission from parents.
  def can_use_services?
    of_age? || @parent_permission
  end
  # Private method is_of_age? that returns true if @age is greater or equal to 18 and false otherwise.
  private :of_age?
end
