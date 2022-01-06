class Solver
  def factorial(int)
    raise StandardError, 'Error, only integers bigger than 0 are permitted' if int.negative?

    out = 1
    while int.positive?
      out *= int
      int -= 1
    end
    out
  end

  def reverse(input)
    splited = input.chars
    reverse = ''
    splited.each { |char| reverse = char + reverse }
    reverse.to_str
  end

  def fizzbuzz(input)
    d_by_five = input % 5
    d_by_three = input % 3
    if d_by_three === 0 && d_by_five.zero?
      'fizzbuzz'
    elsif d_by_five === 0
      'buzz'
    elsif d_by_three === 0
      'fizz'
    else
      input.to_s
    end
  end
end
