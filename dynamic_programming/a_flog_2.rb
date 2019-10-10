n, k = gets.split(" ")
h = gets.split(" ").map(&:to_i)

number_of_steps = n.to_i
jump_power = k.to_i

# DP配列を初期化
dp = Array.new(1, 0)

(1...number_of_steps).each do |index|
  # コストの最小値
  costs_of_jump_min = 0xFFFFFFFF
  (1..jump_power).each do |jump|
    # ex. 2ステップ目までのコストを考える時、3段ジャンプは計算しない
    break unless index >= jump

    # コストの配列.minは処理速度が遅く、間に合わない(on ruby 2.3.3)
    # 素直にif文で最小値更新した方が速い(と言っても1687msでギリギリ)
    cost = dp[index - jump] + (h[index] - h[index - jump]).abs
    costs_of_jump_min = cost if costs_of_jump_min > cost
  end

  dp.push(costs_of_jump_min)
end

puts dp[number_of_steps - 1]
