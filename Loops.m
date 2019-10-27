a = 1:10
b = 1:2:7

for i = 1:10
    c(i) = i^2;
end

c

for i = 1:100
    if i == 30
        g(3) = 3;
    elseif i == 50
        g(10) = 1;
    elseif i == 80
        'here we are'
        break
    end
end

display(['this is i: ', num2str(i)])



g
