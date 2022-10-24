# your code goes here

class Person
attr_reader :name , :happiness, :hygiene, :bank_account
attr_writer :bank_account
  def initialize name, bank_account = 25,hygiene=8, happiness=8
    @name = name
    @bank_account = bank_account
    @happiness = happiness 
    @hygiene = hygiene
    end

    def happiness=(value)
      if value > 10
        @happiness = 10
      elsif value < 0
        @happiness = 0
      else
        @happiness = value 
      end
    end

    def hygiene=(value)
      if value > 10
        @hygiene = 10
      elsif value < 0
        @hygiene = 0
      else
        @hygiene = value 
      end
    end

    def happy? 
     happiness > 7 ? true : false 
    end 
    def clean? 
      hygiene > 7 ? true : false 
     end 

     def get_paid amount
      self.bank_account += amount
      "all about the benjamins"
     end

     def take_bath
      
     self.hygiene= @hygiene + 4
  
     "♪ Rub-a-dub just relaxing in the tub ♫"
     end 

     def work_out
      self.happiness= (@happiness +2)
      self.hygiene= (@hygiene -3)
      "♪ another one bites the dust ♫"
     end
     def call_friend friend
      friend.happiness+=3

      self.happiness=(@happiness +3)
      "Hi #{friend.name}! It's #{self.name}. How are you?"

     end

     def start_conversation person , topic
if topic == "politics"
  self.happiness= (@happiness -2)
  person.happiness-=2
  'blah blah partisan blah lobbyist'
elsif topic == "weather"
  self.happiness = (@happiness +1)
  person.happiness+=1
  'blah blah sun blah rain'
else 
  'blah blah blah blah blah'
    end
  end
end