class Mermaid
    attr_reader :name, :age
    def initialize(name, age = 22)
        @name = name
        @age = age
    end
    def get_older
        @age += 1
    end
end