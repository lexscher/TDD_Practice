class Calculator

  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def multiply(a, b)
    a * b
  end

  def divide(a, b)
    a / b
  end

  def factorial(a)
    return 1 if (a == 0)
    (1..a).reduce(:*)
  end

end