n = gets.to_i
h = gets.chomp.split(" ").map(&:to_i)

# DP配列を初期化
dp = Array.new(n, 0)

(1...n).each do |index|
  if index == 1
    dp[index] = dp[index - 1] + (h[index] - h[index - 1]).abs
  else
    step_one = dp[index - 1] + (h[index] - h[index - 1]).abs
    step_two = dp[index - 2] + (h[index] - h[index - 2]).abs
    dp[index] = [step_one, step_two].min
  end
end

puts dp[n - 1]
