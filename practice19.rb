require 'rspec'


def fraction_calculator fraction_one, fraction_two, operator
	a = Rational(fraction_one)
	b = Rational(fraction_two)
	if (operator == "*")
		(a * b).to_s
	elsif (operator == "/")
		(a / b).to_s
	elsif (operator == "+")
		(a + b).to_s
	else
		(a - b).to_s
	end
end

describe 'Fraction multiplication' do
  it 'can multiply two fractions and output the value in a string based fraction format' do
    expect(fraction_calculator("1/3", "2/4", "*")).to eq("1/6")
    expect(fraction_calculator("1/3", "2/4", "/")).to eq("2/3")
    expect(fraction_calculator("1/3", "2/4", "+")).to eq("5/6")
    expect(fraction_calculator("1/3", "2/4", "-")).to eq("-1/6")
  end
end
