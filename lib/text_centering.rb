class TextCentering
  def center(string)
    longest_element = string.split(/\n/).group_by(&:size).max.last
    longest_element.each do |element|
      element.length
      array = string.split(/\n/)
      array.map do |arr|
        spaces_needed = (element.length - arr.length)/2
        #add the number of spaces needed to the beginning of the shortest
        #strings and then join them back up into one string
      end
    end
  end
end