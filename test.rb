class Test
    def initialize (inputName, inputAddress)
      @name = inputName
      @address = inputAddress
    end
  
    def greet
       "Test: Hello there, #{@name} from #{@address}"
    end
  
    def methodOFtest
      puts "This is a method of test class"
    end
    
  end
  
  firstperson = Test.new("Swikar","NEPAL")
  puts firstperson.greet
  secondPerson = Test.new("Acharya","Sankhamul")
  puts secondPerson.greet
  puts firstperson.greet