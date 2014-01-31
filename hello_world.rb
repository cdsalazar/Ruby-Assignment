# Part1: Hello World
class HelloWorldClass
    def initialize(name)
       @name = name.capitalize
    end
    def sayHi
        puts "Hello #{@name}!"
    end
end
string = gets.chomp
hello = HelloWorldClass.new(string)
hello.sayHi 