require('spec_helper')

describe String do
  it('returns a match') do
    sample = Sentence.all.sample.sentence
    guess = 'f'
    expect(sample.match?(guess)).to include('it works')
  end
end
