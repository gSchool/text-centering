require 'spec_helper'
require_relative '../lib/text_center'

describe TextCenter do
  let (:input) {"this is a short line
this is a really long line that has a lot of characters
and this is
short"}

  let (:output) {"                 this is a short line
this is a really long line that has a lot of characters
                      and this is
                         short"}
  it 'Can center text based on input' do
    center = TextCenter.new(input)

    expect(center.center).to eq(output)
  end
end