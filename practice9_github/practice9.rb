require 'rspec'

headers = [
  '1B',
  '2B',
  '3B',
  'SS',
  'C',
  'P',
  'LF',
  'CF',
  'RF'
]

astros = [
  'Gurriel',
  'Altuve',
  'Bregman',
  'Correa',
  'Gattis',
  'Keuchel',
  'Beltran',
  'Springer',
  'Reddick'
]

rangers = [
  'Fielder',
  'Andrus',
  'Odor',
  'Beltre',
  'Lucroy',
  'Darvish',
  'Gomez',
  'Choo',
  'Mazara'
]

def position_filter(headers, *data)
  headers.zip( *data ).each do |name, data|
  end
end

def position_filter2(headers, *data, data2)
 headers.zip( *data, data2 ).each do |name, data, data2|
  end
end

describe 'Position Filter' do
  it 'lines up players with their positions' do
    test_headers = ['1B', '2B', 'P']
    test_team = ['First Base Player', 'Second Base Player', 'Pitcher']
    expect(position_filter(test_headers, test_team).first).to eq(['1B', 'First Base Player'])
  end
end

describe 'Position Filter' do
  it 'lines up players with their positions' do
    expect(position_filter2(headers, astros, rangers).first).to eq(['1B', 'Gurriel', 'Fielder'])
  end
end
