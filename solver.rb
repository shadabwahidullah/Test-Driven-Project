class Solver
    def factorial(int)
      if int < 0
        raise StandardError.new "Error, only integers bigger than 0 are permitted"
      end
      out = 1
      while int > 0
        out = out * int
        int = int - 1
      end
      return out
    end
end