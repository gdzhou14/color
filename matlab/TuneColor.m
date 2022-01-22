close all;clear;clc;

hex1 = '#f24437'; % begin color
hex2 = '#2aa4dd'; % end color


num = 10; % color number


rgb1 = sscanf(hex1(2:end),'%2x%2x%2x',[1 3])/255;
rgb2 = sscanf(hex2(2:end),'%2x%2x%2x',[1 3])/255;

x = 0:1:10;
y = x./x;

rgb1_ = [1,1,1]-rgb1;
rgb2_ = [1,1,1]-rgb2;

for k = num:-1:0
% disp(k)
rgb1_d = rgb1_/num*k;
rgb2_d = rgb2_/num*(num-k);
rgb3 = [1,1,1] - (rgb1_d + rgb2_d);

rgb3_255 = uint8(rgb3*255);
hex3 = ['#',dec2hex(rgb3_255(1)),dec2hex(rgb3_255(2)),dec2hex(rgb3_255(3))];
disp(hex3)
plot(y+k,x,'-','color',rgb3,'linewidth',10);
hold on
end

axis off



