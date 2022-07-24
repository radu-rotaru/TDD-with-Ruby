class Calculator
  def add(numbers)
    arr = numbers.split(",").map {|x| x.to_i if x != ''}
    
    if arr.length == 0
      return 0
    end

    return arr.sum
  end
end