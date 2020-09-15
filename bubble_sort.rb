bubble_arr = [4, 3, 78, 2, 0, 2]

def bubble_sort(arr)

  new_arr = []

  arr.length.times do
    arr.each do
      
      min_result = arr.reduce do |min_num, num|
        min_num = min_num > num ? num : min_num
      end

      arr.slice!(arr.index(min_result))
      new_arr.push(min_result)
    end
  end
  new_arr
end

p bubble_sort(bubble_arr)