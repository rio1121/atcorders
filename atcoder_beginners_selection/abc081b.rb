def contains_odd?(array)
  array.each do |element|
    return true if (element % 2).nonzero?
  end

  false
end

n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
count = 0

loop do
  break if contains_odd?(a)

  a.map! do |element|
    element / 2
  end

  count += 1
end

puts count.to_s
