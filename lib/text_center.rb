class TextCenter
  def initialize(input)
    @input = input.split("\n")
  end

  def center
    length = @input.sort_by {|line| line.length}.last.length
    @input.map do |line|
      line.center(length).rstrip
    end.join("\n")
  end
end