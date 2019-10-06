a = gets.to_i
stdin_bc = gets
s = gets

b, c = stdin_bc.split(" ").map(&:to_i)

sum_integers = a + b + c

puts "#{sum_integers} #{s}"
