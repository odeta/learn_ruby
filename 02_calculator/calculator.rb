#write your code here

def add a, b
  a + b
end

def subtract a, b
  a - b
end

def sum array
  i = 0
  sum = 0
  array.length.times do
    sum = sum + array[i]
    i = i + 1
  end
  sum
end

def multiply *numbers
  numbers.inject(:*)
end

def power a, b
  a ** b
end

def factorial a
  x = 1
  fac = 1
  while x <= a
    fac = fac * x
    x = x + 1
  end
  fac
end
