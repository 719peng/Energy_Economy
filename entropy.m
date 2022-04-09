function [entro] = entropy(input)
%UNTITLED6 此处显示有关此函数的摘要
entro=[1,1,1];
for i=1:3
    entro(i) = input(i)*log(input(i));
end
end

