clc
clear
data_initial = [0.006802721 0.004739336 0.006993007];
min = min(data_initial);
max = max(data_initial);
data = [1,1,1];
for i=1:3
    data(i)=(0.008849558-data_initial(i))/(0.008849558-0.004081633);
end
data = data';
std = std(data);
mean = mean(data);