stdin_a = gets
stdin_bc = gets
s = gets

a = stdin_a.to_i
bc = stdin_bc.split(" ")
b = bc[0].to_i
c = bc[1].to_i

sum_integers = a.to_i + b.to_i + c.to_i

puts "#{sum_integers} #{s}"
