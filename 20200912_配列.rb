#参考URL　https://qiita.com/may88seiji/items/ce9396a4c267a3d449ae

def num_array
  puts "数値配列とeachでの繰り返し"
  array = [1,2,3,4,5]
  array.each {|i|
    puts Array(i)
  }
end

def string_array
    puts "文字配列とForでの繰り返し"
  array  = ["a","b","c"]
  for i in array do
    puts Array(i)
  end
end

num_array
string_array
