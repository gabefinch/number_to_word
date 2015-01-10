require('rspec')
require('numbers_to_words')
require('pry')

describe('Fixnum#numbers_to_words') do
  it('returns correct text for numbers <100') do
    expect(55.numbers_to_words()).to eq('fifty five')
  end

  it('returns correct text for numbers <1000') do
    expect(555.numbers_to_words()).to eq('five hundred fifty five')
  end

  it('returns correct text for numbers <1000') do
    expect(500.numbers_to_words()).to eq('five hundred')
  end

  it('returns correct text for numbers <1000000') do
    expect(999567.numbers_to_words()).to eq('nine hundred ninety nine thousand five hundred sixty seven')
  end

  it('returns correct text for numbers <1000000000') do
    expect(456000056.numbers_to_words()).to eq('four hundred fifty six million fifty six')
  end

  # it('returns correct text for numbers <1000000000000') do
  #   expect(709056010654.numbers_to_words()).to eq('seven hundred nine billion fifty six million ten thousand six hundred fifty four')
  # end
end
