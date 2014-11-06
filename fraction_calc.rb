require "rational"
puts "Press the enter key to run the program."

def multiply(n1, d1, n2, d2)
  nn = (n1*n2)
  nd = (d1*d2)
  [nn, nd]
  end

def add(n1, d1, n2, d2)
  lcm = d1.lcm(d2)
    newnum1 = n1*(lcm/d1)
    newnum2 = n2*(lcm/d2)
   nd1 = lcm
   nd2 = lcm
  finalnumerator = newnum1 + newnum2
 [finalnumerator, lcm]
end

def subtract(n1, d1, n2, d2)
  lcm = d1.lcm(d2)
    newsub1 = n1*(lcm/d1)
    newsub2 = n2*(lcm/d2)
  nd1 = lcm
  nd2 = lcm
  finalnumerator = newsub1 - newsub2
  [finalnumerator, lcm]
end

def divide(n1, d1, n2, d2)
  div1 = (n1*d2)
  div2 = (d1*n2)
  [div1, div2]
end

def simplify(n1, d1)
  gcd = n1.gcd(d1)
    new_n = (n1/gcd)
    new_d = (d1/gcd)
    [new_n, new_d]
# code that simplifies them

end

def output_fraction(nd_array)
  n, d = nd_array
  puts n.to_s + '/' + d.to_s
end

n1, d1 = gets.split('/').collect(& :to_i)

# (nn, nd) it is returned in an array

output_fraction(multiply(2, 4, 2, 4))
output_fraction(add(2, 4, 3, 6))
output_fraction(subtract(1, 2, 1, 4))
output_fraction(divide(4, 5, 2, 3))
output_fraction(simplify(4, 32))

