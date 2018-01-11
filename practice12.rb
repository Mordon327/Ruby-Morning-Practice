require 'rspec'



def html_generator title
	temparr = ["<!doctype html>", "<html lang='en'>", "<head>", "<meta charset='utf-8'>", "<title>#{title}</title>", "</head>", "<body>", "</body>", "</html>"]
	y = "/#{temparr[4]}/"
end

def html_generator_jordan title

<<HTML
<!doctype html>

<html lang="en">
<head>
<meta charset="utf-8">

<title>#{title}</title>
</head>

<body>
</body>
</html>
HTML

end

describe 'HTML generator' do
  it 'allows for a dynamic title' do
    expect(html_generator 'My Site').to match(/My Site/)
  end
end

describe 'HTML generator' do
  it 'allows for a dynamic title' do
    expect(html_generator_jordan 'My Site').to match(/My Site/)
  end
end