a = [1 2 10]
b = [1 3 4 ].'

cdot = a*b % dot product
cele = a.*b' % element wise

m = rand(3,3)

n = m^2
p = m.^2

e = exp(m)

f = inv(m)

% a1 x + b1 y + c1 z = d1
% a2 x + b2 y + c2 z = d2 --> m x = b
% a3 x + b3 y + c3 z = d3

x = inv(m)*b

x = m\b


??