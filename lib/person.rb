# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name)
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
        if @hygiene > 7
            true
        else
            false
        end
    end
    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end
    def get_paid(amount)
        @bank_account +=amount
        "all about the benjamins"
    end
    def take_bath 
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out 
        self.happiness = @happiness +2
        self.hygiene = @hygiene - 3
        "♪ another one bites the dust ♫"
    end
    def call_friend (friend)
        self.happiness = @happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation (friend, topic)
        case topic
        when "politics"
            self.happiness = @happiness - 2
            friend.happiness = friend.happiness - 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness = @happiness + 1
            friend.happiness = friend.happiness + 1
            "blah blah sun blah rain"
        else
            self.happiness = @happiness 
            friend.happiness = friend.happiness 
            "blah blah blah blah blah"
        end
    end 
end