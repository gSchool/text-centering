require 'text_center'

class CenterFile
  def initialize
    @directory = File.absolute_path("../../output/", __FILE__)
    @files = Dir.entries(File.absolute_path("../../data", __FILE__)).map do |file|
      file if file.end_with?('.txt')
    end.compact
  end

  def center_files
    Dir.mkdir(@directory)
    @files.each do |file|
      input = File.read(File.absolute_path("../../data/#{file}", __FILE__))
      output = TextCenter.new(input).center
      File.open(@directory + "/center_#{file}", 'w+') do |new_file|
        new_file.syswrite(output)
      end
    end
  end

end