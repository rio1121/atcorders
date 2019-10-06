a = gets.to_i
b = gets.to_i
c = gets.to_i

x = gets.to_i

number_of_combinations = 0

(0..a).each do |number_of_a|
  break if number_of_a * 500 > x

  (0..b).each do |number_of_b|
    break if (number_of_a * 500 + number_of_b * 100) > x

    number_of_combinations += 1 if (x - (number_of_a * 500 + number_of_b * 100)) <= c * 50
  end
end

puts number_of_combinations
