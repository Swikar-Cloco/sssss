# BASIC SYNTAX PRACTISE
a='aaa'

=begin
 p a
# print a
# print " Not in a new line"

puts a
#=end

def say_hello(thing_to_say)
  puts "The thing to say is #{thing_to_say}"
end

say_hello (1)

def add_num (a,b=10)
  return a+b
end
numToAdd = gets.to_i
result = add_num(numToAdd)
puts "Num added to #{numToAdd} is #{result}"
=begin
num = 1

printf "Number: %d, String: %s", 10, "hello\n"

$stdout.write "stdout !"

Kernel.p "Kernel p print!"



# simple if else
if num >10
  puts "more than 10"
else
  puts "Less than 10"
end

# while loop
while num<10
  puts num
  num +=1
end

# for loop
puts "FOR LOOP"
for i in 0..5
  puts i.to_s + " is the number."
end


#Iterators and Enumerables
array = [1, 2, 3, 4, 5]
array.each do |num|
  puts num
end

new_str = "NEWSTRING"
new_str.each_char do |thing|
  puts thing
end

test = 2
(1..test).each do |thing|
  puts thing
end

# map
numbers = [1,2,3,4,5,6,7]
puts numbers.inspect

doubled_num = numbers.map {|abb| abb*2}
puts "Doubled numbers : " + doubled_num.inspect

#select 

even_numbers = numbers.select {|iterVal| iterVal.even?}
puts "Even numbers : " + even_numbers.inspect


#DS Hashes
person = { "name" => "Alice", "age" => 30, "city" => "New York" }
person.default = "NO-ONE"
puts person["name"] 

puts person["nnn"]
=end

# class and Objects

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


class ForAge < Test
  def initialize (inputName, inputAddress, inputAge)
    super(inputName, inputAddress)
    @age = inputAge
  end

  def greet 
    super + " of age #{@age}. How has it been ?"
  end
end

thirdPerson = ForAge.new("Sandar","MOMO",20)
puts thirdPerson.greet
thirdPerson.methodOFtest
