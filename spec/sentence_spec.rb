require('spec_helper')

describe Sentence do
  it 'draws a random sentence from the database' do
    expect(Sentence.all.sample.sentence).to(be_an_instance_of(String))
  end
end
