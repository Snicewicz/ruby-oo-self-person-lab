# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(amount)
        @happiness = normalize(amount)
    end

    def hygiene=(amount)
        @hygiene = normalize(amount)
    end

    def normalize(number)
        if number > 10
            return 10
        elsif number < 0
            return 0
        end
        return number
    end
    
    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end
    
    
    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
        self.hygiene = @hygiene - 3
        self.happiness = @happiness + 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = @happiness + 3
        friend.happiness = @happiness + 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            return "blah blah partisan blah lobbyist"
            self.happiness = @happiness - 2
            person.happiness = @happiness - 2
        elsif topic == "weather"
            return "blah blah sun blah rain"
            self.happiness = @happiness + 1
            person.happiness = @happiness + 1
        else 
            return "blah blah blah blah blah"
        end
    end
end