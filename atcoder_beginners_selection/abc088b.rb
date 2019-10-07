n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)

alice_points = 0
bob_points = 0

# 配列が空であれば終了
loop do
  break if a.size.zero?

  alice_points += a.max
  a.slice!(a.index(a.max))

  break if a.size.zero?

  bob_points += a.max
  a.slice!(a.index(a.max))
end

puts alice_points - bob_points
