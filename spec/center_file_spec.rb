require 'spec_helper'
require_relative '../lib/center_file'

describe CenterFile do
  let (:files) {
    Dir.entries(File.absolute_path("../../data", __FILE__)).map do |file|
      file if file.end_with?('.txt')
    end.compact
  }
  it 'iterates through all files in /data and centers the text and outputs them' do
    files_to_center = CenterFile.new
    files.each do |file|
      expect(File::exists?(File.absolute_path("../output/#{file}"))).to eq(false)
    end
    files_to_center.center_files
    stuff = Dir.entries(File.absolute_path("../../output", __FILE__)).map do |file|
      file if file.end_with?('.txt')
    end.compact
    stuff.each do |file|
      expect(File::exists?(File.absolute_path("../../output/#{file}", __FILE__))).to eq(true)
    end
  end
end