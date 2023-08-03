class Student
    attr_reader :name, :age
  
    def initialize(name, age = 17)
      @name = name
      @age = age
    end
  end