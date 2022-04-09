clc
clear 
% load data
data=[0.01697008	0.429187298	0.234466778	0.438933289];
weight=[0.418894757	0.210400232	0.300555022	0.07014999];
data2 = [1,1,1,1];
% vector normalization
for k=1:4
    data2(k) = data(k)^2;
end
for k=1:4
    data(k) = data(k)/sqrt(sum(data2));
end
% calculate five distinctive aggregation method
d_w = [1,1,1,1];
wp=[1,1,1,1];
wdi2=[1,1,1,1];
for i=1:4
    d_w(i) = data(i)*weight(i);
    wp(i) = data(i)^weight(i);
    wdi2(i) =  (data(i)*weight(i))^2;
end

SAW = sum(d_w);
WP = prod(wp);
WDI2 = sqrt(sum(wdi2));
WDI8 = min(d_w);

nominate=[1,1,1,1];
dominate1 = [1,1,1,1];
dominate2 = [1,1,1,1];
for j=1:4
    nominate(j) = (d_w(j)-min(d_w))^2;
    dominate1(j) = nominate(j);
    dominate2(j) = (d_w(j)-max(d_w))^2;
end
TOPSIS = sqrt(sum(nominate))/(sqrt(sum(dominate1))+sqrt(sum(dominate2)));
% final result
result = [1,1,1,1,1];
result(1) = SAW;
result(2) = WP;
result(3) = WDI2;
result(4) = WDI8;
result(5) = TOPSIS;







