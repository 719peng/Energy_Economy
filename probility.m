function [output] = probility(input,s)
%calculate probility
output=[1,1,1];
for i=1:3
    output(i) = input(i)/s;
end
end

