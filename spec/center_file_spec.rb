require 'spec_helper'
require_relative '../lib/center_file'

describe CenterFile do
  it 'iterates through all files in /data and centers the text and outputs them' do
    Dir.entries(File.absolute_path("../../data", __FILE__)).join(' ').split(' ').each do |file|
      puts file
    end
  end
end