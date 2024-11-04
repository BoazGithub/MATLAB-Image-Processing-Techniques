clc; 
clear all;
% Generate images as Figure 1:a, which is a radial Sinusoid signal
% given
A=1;
r=0.028;
B=360;
H=360;

% ...................... 
% ...developing our figure4a
img=zeros(B,H); 
Cx=(B+1)/2;
Cy=(H+1)/2;
for x=1:H; 
    for y=1:B
        L=sqrt((Cx-x)^2+(Cy-y)^2);  % distance from the center 
        img(x,y)=A*sin(2*pi*r*L);   
    end 
end 

% final results for the our 4a image 
F=fft2(img);
magnitude=abs(F);
phas=angle(F)*180/pi;
figure(1);
imshow(img);