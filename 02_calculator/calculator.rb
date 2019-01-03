#write your code here
def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  sum = 0
  array.each do |number|
    sum += number
  end
  sum
end

def multiply(*numbers)
  result = 1
  numbers.each { |num| result *= num }
  # puts result
  result
  # numbers.inject(1) { |sum, num| sum * num }
end

# multiply(3, 4, 5)

def power(num, pow)
  num**pow
end

def factorial(num)
  if num <= 1
    1
  else
    num * factorial(num - 1)
  end
end
