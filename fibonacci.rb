#!usr/bin/ruby -w

def fib(n, nums=[])
  n.times do |i|
    if i == 0 
      nums << 0
    elsif i == 1
      nums << 1
    else
      nums << (nums[i - 2] + nums[i - 1])
    end
  end
  nums
end

def fib_rec(n, ary=[])
  return n == 0 ? 0 : n == 1 ? 1 : (fib_rec(n - 1).to_i + fib_rec(n - 2).to_i) ## one-line
=begin
  return 0 if n == 0
  return 1 if n == 1
  return (fib_rec(n - 1).to_i + fib_rec(n - 2).to_i) if n > 1
=end
end

def four_mil
  i = 0
  while fib_rec(i) < 4000000
    fib_rec(i)
    i += 1
  end
  i
end

def even_fib_sum(ary=[])
  fib(34).each { |i| ary << i if i % 2 == 0 }
  ary.sum
end

puts even_fib_sum
