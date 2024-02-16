# =begin
class Test

  #attribute accessor us used and instance var is at the global scope for the class and we can use Setter, Getter feature without defining methods 
  attr_accessor :attribute1, :attribute2, :attribute3

  @attribute1
  @attribute2
 


    def initialize (inputName, inputAddress, attr3)
      @name = inputName
      @address = inputAddress 
      @attribute3 = attr3
    end
  
    def greet
       "Test: Hello there, #{@name} from #{@address}"
    end
  
    def methodOFtest
      puts "This is a method of test class - secondary branch"
    end

    # setter method example
    def setterMethod=(inp)
      @gottenInp = inp
    end

    #getter for the above setter
    def getter
      @gottenInp
    end

    def to_s
      "Name: #{@name}, Address #{@addres}, Attribute 3: #{@attribute3} "
    end

end
  
  firstperson = Test.new("Swikar","NEPAL", "samp attr of p1")
  puts firstperson
  puts firstperson.greet
  secondPerson = Test.new("Acharya","Sankhamul", "samp attr of p2")
  puts secondPerson.greet
  puts secondPerson

  puts "Object interaction will be done to alter the attribute 3 of first person"
  firstperson.attribute3 = secondPerson.attribute3
  puts firstperson

  
  
  firstperson.methodOFtest

  #setting value in setter method
  firstperson.setterMethod = "Setting Value"
  puts firstperson.getter
 
  #setting and getting without setter and getter methods by the use of attr_accessor
  firstperson.attribute1 = "attribute 1 value"
  puts firstperson.attribute1

  firstperson.attribute3 = "attribute 3 value"
  puts firstperson.attribute3

  # this is wrong as we do not have @attr3 we have to use instance variable name instead of the local var that we receive the value in and use that value to set it to the instance variable
      # firstperson.attr3 = "attr3 3 value"
      # puts firstperson.attr3




range = 1..20
puts range.class
Const_y = 2
puts Const_y.class

puts range.to_a.shuffle.inspect

arrayNum = range.to_a

puts arrayNum.select {|numb| numb.odd?}

# puts arrayNum.methods 

myhash = {a: 1, b: 2, c: 3, d: 4}
25.times{print "-"}
print "\n"

myhash.each { |somekey, somevalue| puts "The key is #{somekey} and the value is #{somevalue}" }
25.times{print "-"}
print "\n"

myhash.each { |k, v| myhash.delete(k) if v > 3 }
puts myhash

# =end



