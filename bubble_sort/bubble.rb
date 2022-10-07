def bubble_sort(to_sort)
  boundary=to_sort.length-1
  loop do
    for i in 0...(to_sort.length-1)
      if to_sort[i]>to_sort[i+1]
        to_sort[i], to_sort[i+1] = to_sort[i+1], to_sort[i]
      end
    end
    boundary-=1
    break if boundary==0
  end
  to_sort
end

puts bubble_sort([4,3,78,2,0,2])
