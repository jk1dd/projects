class BubbleSort
  def sort(array)

    while true
    switched = false

    (array.length - 1).times do |index|
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        switched = true
      end
    end

    if switched == false
      break
    end
    end

    array
  end
end

sorter = BubbleSort.new

p sorter.sort(["d","b","a","c"])
p sorter.sort([7, 9, 3, 44, 55, 2, 4])
