require 'rspec'
require_relative '../lib/text_centering'

describe TextCentering do
  it 'will center text' do
    text_center = TextCentering.new
    actual = text_center.center("sum string\nmore strings")
    expected = [" sum string\nmore strings"]
    expect(actual).to eq(expected)
  end
end