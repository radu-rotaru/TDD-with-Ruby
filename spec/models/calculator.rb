class Calculator
  def add(numbers)
    delimitersArr = [',', '\n']

    if numbers[0..1] == "//"
      newDel, numbers = numbers.split('\\n', 2)
      delimitersArr.append(newDel[2..-1])
    end

    regEx = Regexp.union(delimitersArr)
    arr = numbers.split(regEx).map {|x| x.to_i if x != ''}
    
    if arr.length == 0
      return 0
    end

    return arr.sum
  end
end