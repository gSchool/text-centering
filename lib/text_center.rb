class TextCenter
  def initialize(input)
    @input = input.split("\n")
  end

  def center
    length = find_greatest_length(@input)
    @input.map do |line|
      x = 0
      if line.length < length
        x = ((length-line.length)/2)
      end
      (line.prepend(" "*x))
    end.join("\n")
  end

  private
  def find_greatest_length(input)
    length = input.map do |line|
      line.length
    end
    length.sort!.last
  end
end