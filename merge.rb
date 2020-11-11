def merge(ary1, ary2)
  sorted = []
  while !ary1.empty? && !ary2.empty? do
    if ary1[0] < ary2[0]
      sorted << ary1.shift
    else
      sorted << ary2.shift
    end
  end
  return sorted.concat(ary1).concat(ary2)
end

def merge_sort(ary)
  if ary.length <= 1
    return ary
  else
    mid = ary.length / 2
    left = merge_sort(ary.slice(0...mid))
    right = merge_sort(ary.slice(mid...ary.length))
    merge(left, right)
  end
end

test = [2,1,4,6,3,9,7]

puts merge_sort(test)
