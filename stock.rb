# 2 nested loops
def stock_picker(arr)
  buy = 0
  sell = 0
  profit = 0
  arr.each_with_index do |price, index|
    (index...arr.length).each { |i|
      if arr[i] - price > profit
        profit = arr[i] - price
        buy = index
        sell = i
      end
    }
  end
  puts [buy, sell]
end

def stock_picker_oneline(arr)
  p arr.each_with_index.to_a.combination(2).max_by { |buy, sell| sell[0] - buy[0] }.map {|x| x[1]}
end

# stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker_oneline([17,3,6,9,15,8,6,1,10])