function [data] = VN(data)
%vector normalization
data2 = [1,1,1,1];
for k=1:4
    data2(k) = data(k)^2;
end
for k=1:4
    data(k) = data(k)/sqrt(sum(data2));
end
end

