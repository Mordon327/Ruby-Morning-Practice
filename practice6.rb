
require 'rspec'
require 'benchmark'
#using benchmark to test the speed of the sort methods.

#my method
def new_max array_of_elements
	i = 0
	largest = array_of_elements[0]
	while i < array_of_elements.length do
		if array_of_elements[i] > largest
			largest = array_of_elements[i]
		end
		i += 1
	end
	largest
end

#jordans method
def new_max_jordan array_of_elements
	newmax = 0
	array_of_elements.each do |i|
		if i > newmax
			newmax = i
		end
	end
end

#common method
def crap_max array_of_elements
	array_of_elements.sort.last
end

#STL method
def max_max array_of_elements
	array_of_elements.max
end

#test file
# describe 'New Max method' do
#   it 'returns the max value from an array efficiently' do
#     test_array = [2, 4, 10, 3, 1]
#     expect(new_max(test_array)).to eq(10)
#   end
# end


Benchmark.bm(100) do |x|
	arr = Array.new(100000000) { rand 100 }
	x.report('max jordan: ') { new_max_jordan arr }
	x.report('my max: ') { new_max arr }
	x.report('crap_max: ') { crap_max arr }
	x.report('max_max: ') { max_max arr }
end