require 'spec_helper'

describe Faker::YikYak do
  it 'should return a number of words corresponding to its word count' do
    count = 20
    faker_output = Faker::YikYak.words(count)
    expect(faker_output.split(' ').count).to eq(20)
  end
end
