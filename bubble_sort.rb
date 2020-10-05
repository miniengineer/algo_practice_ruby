# Build a method
# #bubble_sort that takes an array and returns a sorted array.
# It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

def bubble_sort(arr)
  still_sorting = true
  while still_sorting do
    still_sorting = false
    arr.each_with_index do |num, i|
      if i < arr.size - 1 && num > arr[i + 1]
        still_sorting = true
        memo = num
        arr[i] = arr[i + 1]
        arr[i + 1] = memo
      end
    end
  end
  arr
end

bubble_sort([4,3,78,2,0,2])


