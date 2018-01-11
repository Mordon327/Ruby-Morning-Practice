def longest array
  num = 0
  i = 0
  if array.length > 1
    loop do
      comp = array[i]
      comp2 = array[i + 1]
        if comp.length < comp2.length
          num = i + 1
        end
        i += 1
      break if (i + 1) == (array.length)
    end
  end
  num
end

def moreStars num
  i = 0
  stars = "*"
  loop do
    stars += "*"
    i += 1
    break if i == num
  end
  stars += "*****"
end

def printArray array, num
  i = 0
  loop do
    space = " "
    if array[i].length < array[num].length
      j = 0
      loop do
        space += " "
        j += 1
        break if j == num - 1
      end
    end
    puts "* " + array[i] + space + "*"
    i += 1
    break if i == array.length
  end
end

puts "What would you like to say?"
answer = gets.chomp

answerArray = answer.split(' ').map { |s| s.to_s }
longWord = longest answerArray
stars = moreStars(longWord)

puts stars
printArray(answerArray, longWord)
puts stars
