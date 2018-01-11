
require 'rspec'


# Jordan's solution
module RubyContent
  refine String do
    def commentize
      "# #{self}"
    end
  end
end

class ContentController
  # using RubyContent
  def initialize(word)
    @word = word
  end

  def hidden_content
    @word.commentize
  end
end

# my code.  The main difference is that my code will change the string class.
# Jordan's code will only work when you call 'using RubyContent'.
class String
  def commentize
    obj = self
    adds = "# "
    obj = adds + obj
  end
end




describe 'Refining Strings for a specific module' do
  it 'changes the behavior of the String method to make it render as a comment' do
    cc = ContentController.new("My String")
    expect(cc.hidden_content).to eq("# My String")
  end
end