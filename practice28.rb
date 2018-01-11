# Grab a long integer separated by commas and then add the comma groupings together and continue refactoring until you get a single number.

# 123,456,789 = 6,15,24
# 61,524 = 7,11
# 711 = 9

# So 9 is ther answer for this sample.

def add_nums number
  i = number.digits.count - 1
  j = 0
  sum = 0
  array = number.digits
  p i
  loop do
    p array[i]
    sum += array[i]
    i -= 1
    j += 1
    break if i < 0 || j == 2
  end
  sum
end

var = 123456
# var1 = var.digits
# puts var.digits.count
# # puts var.class
# p var1.class
# p var1


sum = add_nums var
p sum