require 'rspec'

def total_sorter invoices
	i = 0
	length = invoices.length - 1
	loop do
		p "i = #{i}"
		i += 1
		j = 0
		k = 1
		loop do
			if invoices[j].total < invoices[k].total
				temp = invoices[k]
				invoices[k] = invoices[j]
				invoices[j] = temp
			end
			j += 1
			k += 1
			break if k == length
		end
		break if i == length
	end
	invoices
end

describe 'Invoice sorter' do
  it 'sorts a set of invoices by their totals' do
    Invoice = Struct.new(:name, :total, :category)
    google = Invoice.new('Google', 500, 'Marketing')
    amazon = Invoice.new('Amazon', 1000, 'eCommerce')
    yahoo = Invoice.new('Yahoo', 300, 'Marketing')

    invoices = [google, amazon, yahoo]

    expect(total_sorter(invoices).first.name).to eq('Amazon')
    expect(total_sorter(invoices).last.name).to eq('Yahoo')
  end
end