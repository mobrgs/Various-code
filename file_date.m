clc
clear all
close all

all_file = dir("LE07_*_band1.tif");
number_file = length(all_file);

all_date = zeros(number_file,1);
all_date_str = strings(number_file);

for i = 1:number_file
    file = all_file(i).name;
    date = file(6:13);
    all_date(i) = (datenum(date,'yyyymmdd')); 
end

sort(all_date);
number_days = zeros(number_file-1,1);

for i = 1:number_file-1
    number_days(i) = daysact(all_date(i), all_date(i+1));
end

x = 1:1:number_file-1;

figure(1)
plot(x,number_days);
xlabel('File');
ylabel('Number of days between two consecutive files');
