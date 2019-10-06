# 1以上n以下の整数のうち、10進法で各桁の和がa以上b以下であるものの総和
n, a, b = gets.chomp.split(" ")
each_digit_sum_min = a.to_i
each_digit_sum_max = b.to_i
value_limit = n.to_i

sum_of_each_combination = 0
(1..value_limit).each do |value|
  each_digit_array = value.to_s
  each_digit_sum = 0
  (0...each_digit_array.size).each do |digit|
    # valueの各桁の値を足す
    each_digit_sum += each_digit_array[digit].to_i
  end

  sum_of_each_combination += value if each_digit_sum <= each_digit_sum_max && each_digit_sum >= each_digit_sum_min
end

puts sum_of_each_combination
