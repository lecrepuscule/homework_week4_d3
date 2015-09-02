class Calculator

  def self.basic(num1, num2, operation)
    case operation
    when "+"
      num1 + num2
    when "-"
      num1 - num2
    when "*"
      num1 * num2
    when "/"
      (num1 / num2).to_f
    end
  end

end