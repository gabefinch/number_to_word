require('rspec')
require('num_write')
require('pry')

describe('Fixnum#num_write') do

  it('returns correct text for numbers <10') do
    expect(5.num_write()).to eq('five')
    expect(0.num_write()).to eq('zero')
  end

  it('returns correct text for numbers <20') do
    expect(16.num_write()).to eq('sixteen')
    expect(10.num_write()).to eq('ten')
  end

  it('returns correct text for numbers <100') do
    expect(55.num_write()).to eq('fifty five')
    expect(90.num_write()).to eq('ninety')
    expect(23.num_write()).to eq('twenty three')
  end

  it('returns correct text for numbers <1,000') do
    expect(555.num_write()).to eq('five hundred fifty five')
    expect(900.num_write()).to eq('nine hundred')
    expect(207.num_write()).to eq('two hundred seven')
    expect(819.num_write()).to eq('eight hundred nineteen')
  end

  it('returns correct text for numbers <1,000,000') do
    expect(50000.num_write()).to eq('fifty thousand')
    expect(99045.num_write()).to eq('ninety nine thousand forty five')
    expect(1000.num_write()).to eq('one thousand')
    expect(5500.num_write()).to eq('five thousand five hundred')
    expect(456789.num_write()).to eq('four hundred fifty six thousand seven hundred eighty nine')
  end

  # it('returns correct text for numbers <1000000') do
  #   expect(999567.num_write()).to eq('nine hundred ninety nine thousand five hundred sixty seven')
  # end
  #
  # it('returns correct text for numbers <1000000000') do
  #   expect(456000056.num_write()).to eq('four hundred fifty six million fifty six')
  # end
  #
  # it('returns correct text for numbers <1000000000000') do
  #   expect(709056010654.num_write)).to eq('seven hundred nine billion fifty six million ten thousand six hundred fifty four')
  # end
end
