n = gets.to_i
d = []
number_of_steps = 0

(0...n).each do
  element = gets.to_i
  d.push(element)
end

# 配列が空になったら終了
loop do
  # 配列内の最大値を取り出し、同じ値を全て配列から削除
  picked_value = d.max
  d.delete(picked_value)

  # 1段積み上げる
  number_of_steps += 1

  break if d.size.zero?
end

puts number_of_steps
