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

  def self.mortgage(loan, apr, term)
    loan * apr * ( ( 1 + apr )**term ) /( (1 + apr) ** term - 1)
  end

  def self.bmi(units, mass, height)
    bmi = mass/(height**2);
    (units == "imperial") ? bmi * 703 : bmi;
  end

  def self.distance(distance, speed, mpg, cost)
    time = (distance / speed).to_f
    actual_mpg = (mpg > 60) ? [0, mpg - (speed - 60) * 2].max : mpg
    cost = (distance / actual_mpg * cost).to_f
    [time, cost]
  end

end