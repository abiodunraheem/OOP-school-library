class Person 
    attr_reader :id
    attr_accessor :name, :age
    def initialize (age, name: "unknown", parent_permission: true)
        @id = Random.rand(1..1000)
        @age = age
        @name = name
        @parent_permission = parent_permission
    end

    # create a getters for @id, @name, and @age
    def get_id
        @id
    end
    def get_name
        @name
    end
    def get_age
        @age
    end

    # create a setters for @name, and @age
    def set_name(name)
        @name = name
    end
    def set_age(age)
        @age = age
    end

    # Create a private method is_of_age? that returns true if age is greater or equal to 18 and false otherwise
    def is_of_age?
        @age >= 18
    end

    # Create public method can_use_services? that returns true if person is of age or if they have permission from parents.
    def can_use_services?
        is_of_age? || @parent_permission
    end

end