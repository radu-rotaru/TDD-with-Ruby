class Calculator
  def add(numbers)
    delimitersArr = [',', '\n']

    regEx = Regexp.union(delimitersArr)
    arr = numbers.split(regEx).map {|x| x.to_i if x != ''}
    
    if arr.length == 0
      return 0
    end

    return arr.sum
  end
end