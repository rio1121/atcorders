n = gets.to_i
ti_xi_yi = []

(0...n).each do
  elements = gets.chomp.split(" ").map(&:to_i)
  ti_xi_yi.push(elements)
end

judge = "Yes"
position = [0, 0]
prev_steps = 0

ti_xi_yi.each do |time|
  steps = time[0] - prev_steps
  distance = (time[1] - position[0]).abs + (time[2] - position[1]).abs
  
  # 距離が不足している
  if steps < distance
    judge = "No"
    break
  end

  # 到達不可能(試行回数と距離の偶奇は一致しなければならない)
  if (steps % 2) != (distance % 2)
    judge = "No"
    break
  end

  position = [time[1], time[2]]
  prev_steps = time[0]
end

puts judge
