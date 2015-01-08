require('rspec')
require('score.rb')
require('pry')

describe('String#score') do
  it("Takes a letter and returns scrabble score") do
    expect(("a").score()).to(eq("1"))
  end
  it("Takes a word and returns the scrabble score") do
    expect(("adf").score()).to(eq("7"))
  end

  it("Takes a word and returns the scrabble score") do
    expect(("1adf").score()).to(eq("7"))
  end
end
