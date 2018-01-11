# bottega diner (nested hashes)
# You get one entree and two side choices at regular cost.
# - show them the entire menu (print out)
# - waitress suggests a chef’s special, which is a random mix of 1 entree and 2 side choices
# - user selects an entree.
# - “waitress” makes a comment based on their selection (you ordered this? that’s gross)
# - comment can either be a comparison of the two items, or random comment pulled from a comment vault.
# - tell them the price
# - repeat the above options for side choices (suggestion and a price, don’t repeat chef suggestion)
# - total up the cost
# have a breakfast, lunch and dinner menu.  breakfast has different items, lunch and dinner have the same items but are different prices.
# bonus: allow for item customization (how items are prepared, decide addtional cost implications)
# extra bonus: 3d print out actual food and eat it.


entree = { "fried chicken tenderloins" => 9.99,
			"grilled chiken tenderloins" => 8.99,
			"half-point hamburger steak" => 9.99,
			"grilled pork chop" => 9.99,
			"sugar cured ham" => 10.99,
			"hickory-smoked country ham" => 8.99,
			"lemon pepper grilled rainbow trout" => 12.99,
			"u.s. farm raised catfish" => 11.99,
			"fried chicken livers" => 7.99,
			"homemade chicken n' dumblins" => 8.99 }

breakfast_entree = { 
			"short stack of pancakes" => 4.99,
			"tall stack of pancakes" => 6.99,
			"crepes" => 4.99,
			"french toast" => 4.99,
			"stuffed french toast" => 6.99,
			"omlette" => 5.99,
			"vegan omlette" => 6.50,
			"steak and eggs" => 10.99 }

entree_selection = [ "fried chicken tenderloins",
			"grilled chiken tenderloins",
			"half-point hamburger steak",
			"grilled pork chop",
			"sugar cured ham",
			"hickory-smoked country ham",
			"lemon pepper grilled rainbow trout",
			"u.s. farm raised catfish",
			"fried chicken livers",
			"homemade chicken n' dumblins" ]

breakfast_selection = [ 
			"short stack of pancakes",
			"tall stack of pancakes",
			"crepes",
			"french toast",
			"stuffed french toast",
			"omlette",
			"vegan omlette",
			"steak and eggs" ]

side_dish = [ 
			"country vegetable plate",
			"fried apples",
			"homestyle fries",
			"breaded fried okra",
			"mixed green side salad",
			"brussels sprouts n' kale salad",
			"cole slaw",
			"sweet whole baby carrots",
			"hashbrown casserole",
			"macaroni n' cheese",
			"country green beans",
			"mashed potatoes with gravy",
			"fresh seasonal fruit",
			"cheese grits",
			"fresh apple slices",
			"pinto beans",
			"dumplins",
			"baked potatoe"
			 ]
breakfast_side_dish = [
			"two eggs",
			"hashbrown",
			"two pancakes",
			"two slices of baccon",
			"two sosages",
			"two pieces of toast" ]

drinks = [
			"sprite",
			"coke",
			"pepsi",
			"mountain dew",
			"dr pepper",
			"fanta",
			"root beer",
			"hot chocolate",
			"milk",
			"orange juice",
			"water" ]

response = [
				"i don't like your selection.",
				"i heard that someone died from that stuff.",
				"why would you eat that?",
				"they never cook that quite right.",
				"You should order the special... i picked it out myself."
			]

DRINK_COST = 1.50
TAX = 1.047
def special_numbers number
	b = rand(number)
	c = 0
	loop do
		c = rand(number)
	break b != c
	end
	[b, c]
end
@time = Time.new

nums = []
order_special =[]
if @time.hour < 12
	number = breakfast_side_dish.length
	nums = special_numbers(number)
	nums << rand(breakfast_selection.length)
	puts "Welcome to the Bottega diner, may I suggest todays special: #{breakfast_selection[nums[2]]} with #{breakfast_side_dish[nums[0]]} and #{breakfast_side_dish[nums[1]]}"
	puts "Would you like the special or to take a look at the menu? Options: special, menu"
	order_special = [breakfast_selection[nums[2]], breakfast_side_dish[nums[0]], breakfast_side_dish[nums[1]]]
else
	number = side_dish.length
	nums = special_numbers(number)
	nums << rand(entree_selection.length)
	puts "Welcome to the Bottega diner, may I suggest todays special: #{entree_selection[nums[2]]} with #{side_dish[nums[0]]} and #{side_dish[nums[1]]}"
	puts "Would you like the special or to take a look at the menu? Options: special, menu"
	order_special = [breakfast_selection[nums[2]], breakfast_side_dish[nums[0]], breakfast_side_dish[nums[1]]]
end
loop do
@answer = gets.chomp
loopdyloop = 1
	if @answer.downcase == "special"
		puts "Excelent choice."
		loopdyloop = 0
	elsif @answer.downcase == "menu"
		puts response[rand(response.length)]
		if @time.hour < 12
			puts breakfast_selection
		else
			puts entree_selection
		end
		loopdyloop = 0
	else
		puts "I'm sorry but your thick southern accent is too much for my ears. What did you want?"
	end
	break if loopdyloop == 0
end
@total = 0


if @answer.downcase == "special"
	if @time.hour < 12
		@total += breakfast_entree[order_special[0]]
	else
		@total += entree[order_special[0]]
	end 
else
	loop do
	loop do
		puts "What dish would you like to order?"
		@answer = gets.chomp
	break if (breakfast_entree[@answer.downcase] != 0) || (entree[@answer.downcase] != 0)
	end
	if @time.hour < 12
		puts "Your side dish options are: "
		puts breakfast_side_dish
		puts "What is the first side dish?"
		first_side = gets.chomp
		puts "What is the second side dish?"
		second_side = gets.chomp
		puts "Would you like to order anything else?"
		@continue = gets.chomp
		@total += breakfast_entree[@answer.downcase]
	else
		puts "Your side dish options are: "
		puts side_dish
		puts "What is the first side dish?"
		first_side = gets.chomp
		puts "What is the second side dish?"
		second_side = gets.chomp
		puts "Would you like to order anything else?"
		puts "Would you like to order anything else?"
		@continue = gets.chomp
		@total += entree[@answer.downcase]
	end 
	break if @continue.downcase == "no"
	end
end

loop do
	cont_drink = "yes"
	puts "what would you like to drink with that? Drinks cost $#{DRINK_COST}, except for water of course. Your choices are: "
	puts drinks
	answer_drinks = gets.chomp
	if answer_drinks.downcase != "water"
		@total += DRINK_COST
	end
	puts "Anything else to drink?"
	cont_drink = gets.chomp
break if cont_drink.downcase == "no"
end

puts "Your subtotal is $#{@total}."
@total = @total * TAX
puts "Your total is $#{@total}."
loop do
nope = "no"
puts "I hope that you tip well."
tip = gets.chomp
if tip.is_integer?
	@total += tip.to_i
	nope = "yes"
end
break if nope == "yes"
end

if tip.to_i < (@total / 10)
	puts "You are a terrible person."
end
puts "Your total is $#{@total}."















