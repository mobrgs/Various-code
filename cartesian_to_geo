clc
clear all
close all

file = "LE07_20000113_band1.tif"; 
[data, R] = geotiffread(file); 
info = geotiffinfo(file); 
mstruct = geotiff2mstruct(info);

[x, y] = pixcenters(R,size(data));

x_corner = [x(1200), x(2200), x(1200), x(2200)];
y_corner = [y(500), y(500), y(1500), y(1500)];

[lat, lon] = minvtran(mstruct, x_corner, y_corner);
