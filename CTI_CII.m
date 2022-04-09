clear

X = [0.116562064	0.085313891	0.00185065	0.505882353];
omega2 = [0.062843077	0.058978775	0.096056663	0.038623738];
sum = 0.256502253;
value = [1 1 1 1];
total = 0;
for i=1:4
    value(i) = ((1-X(i))^2*omega2(i))/sum;
end

for j=1:4
    total = total + value(j);
end

cfi = 1-sqrt(total)