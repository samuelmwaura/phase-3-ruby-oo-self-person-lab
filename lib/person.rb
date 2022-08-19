# your code goes here
require "pry"
class Person
    attr_reader :name,:happiness,:hygiene
    attr_accessor :bank_account 
    def initialize(name="Maina")
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        if value < 0 
            @happiness = 0
        elsif value > 10
            @happiness = 10
        else
            @happiness = value
        end
    end

    def hygiene=(value)
        if value < 0 
            @hygiene = 0
        elsif value > 10
            @hygiene = 10
        else
            @hygiene = value
        end
    end

     def clean?
        self.hygiene > 7 # return value is boolean - implicitly returns the value of the evaluation of this boolean
     end

     def happy?
        self.happiness > 7
     end

     def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
     end

     def take_bath
        self.hygiene = @hygiene + 4   #uses self to access the hygiene = -setter method and @hygiene instance variable
        "♪ Rub-a-dub just relaxing in the tub ♫"
     end

     def work_out 
        self.hygiene = @hygiene-3 
        self.happiness = self.happiness+2
        "♪ another one bites the dust ♫"  #implicit return value of this string
     end

     def call_friend(called_friend)
        self.happiness = @happiness+3  #please note that the 'happiness=' is a setter method.
        called_friend.happiness = called_friend.happiness + 3  #A lot of care with methods
        "Hi #{called_friend.name}! It's #{self.name}. How are you?"
     end

     def start_conversation(called_friend,topic)
         if topic == "politics"
            self.happiness = @happiness - 2  #This sets the happiness value for the instance that the method is being called on
            called_friend.happiness = called_friend.happiness - 2 #NB //make sure to separate the operator from the operand .Otherwise ruby takes it as single argument to the preceeding method
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = @happiness + 1
            called_friend.happiness = called_friend.happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
     end
end

person1 =Person.new()
person2 = Person.new()

