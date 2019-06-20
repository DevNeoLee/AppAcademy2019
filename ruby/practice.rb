p "hello"

num_one = 1.0

num_two = 2.0

puts num_one + num_two

a = "dance with me"
puts a
p a
print a

puts 1.234.class

A_CON = 21.1
 
puts A_CON

write_handler = File.new("ursum.out", "w")

write_handler.puts("Random text").to_s

write_handler.close

# data_from_file = File.read("")

=begin
heihfoeifheof
=end
age = 12

if ( age >= 5) && (age <= 6)
    puts "hellooooo"
elsif (age)
    puts "hi"
else
    puts "dang"
end

puts true && false

puts 5 <=> 10

print "enter greeting "

# greeting = gets.chomp

# puts greeting

# case greeting
# when "French"
#     puts "Bonjour"
#     exit
# when "Spanish"
#     puts "ola"
#     exit
# when "Japanse"
#     puts "gonnichiwa"
#     exit
# end
age = 12

puts (age > 50) ? "old": "young"

x = 1

loop do 
    x += 1
    
    next unless ( x % 2) == 0
    puts x

    break if x >= 10
end

 y = 5

while y < 10
    y += 1
    next unless ( y % 2 ) == 0
puts y 
end

def add_nums(num1, num2)
    return num1 + num2
end

puts add_nums(3, 3)

second_num = gets.to_i 

def mapIt(arr, list)
    arr.map |ele|
      list.includes(ele)  
    end
end
