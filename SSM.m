clc
clear
%Input original data and Spearman correlation coefficient 
rsj = [1	-0.5	0.5	-0.5];
weight = [0.206286768	0.251897053	0.325160352	0.216655827];
rs = [1	0.5	0.5	0.5	-0.5];
data1 = [0.121814439	0.096106166	0.256329299	0.423529412];
data2 = [0.054029591	0.865751087	0.995356309	0.082352941];
data3 = [0.035871214	0.512796301	0.132131601	0.523529412];

%vector normalization (VN)
data1_vn = VN(data1);
data2_vn = VN(data2);
data3_vn = VN(data3);

%calculate shannon entropy
p1=[1,1,1]; p2=[1,1,1]; p3=[1,1,1]; p4=[1,1,1];
p1(1) = data1(1); p1(2) = data2(1); p1(3) = data3(1); s1=sum(p1);
p2(1) = data1(2); p2(2) = data2(2); p2(3) = data3(2); s2=sum(p2);
p3(1) = data1(3); p3(2) = data2(3); p3(3) = data3(3); s3=sum(p3);
p4(1) = data1(4); p4(2) = data2(4); p4(3) = data3(4); s4=sum(p4);
p5 = [0.485219097 0.454566586 0.524265881]; s5 = sum(p5);

p1 = probility(p1,s1);
p2 = probility(p2,s2);
p3 = probility(p3,s3);
p4 = probility(p4,s4);
p5 = probility(p5,s5);

entro_ij = [sum(entropy(p1)), sum(entropy(p2)), sum(entropy(p3)), sum(entropy(p4))];
entro_i = sum(entropy(p5));

%Shannon-Spearman Measure
d=[1,1,1,1];
for i=1:4
    d(i) = weight(i)*(1+(1/log(3))*entro_ij(i))*rsj(i);
end

d_fianl = abs(sum(d)-(1+(1/log(3))*entro_i)*rs(5));






  


