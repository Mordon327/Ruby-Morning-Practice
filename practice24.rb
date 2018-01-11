arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def reverse array
	if array.empty?
		"Empty array."	
	elsif array.length == 1
			array
	else
		i = array.length
		j = 0

		loop do
			a = array[i - 1]
			b = array[j]
			temp = array[i - 1]
			a = b
			b = temp
			array[i] = a
			array[j] = b
			i -= 1
			j += 1
			break if (i == j) || (i < j)
		end
			# doesn't reverse array, only shows a reverse image of the array.
			# arr = []
			# i = array.length
			# i -= 1
			# loop do

			# 	arr << array[i]
			# 	i -= 1
			# 	break if i < 0
			#end
			#arr

		array
	end
end

p reverse arr
p arr