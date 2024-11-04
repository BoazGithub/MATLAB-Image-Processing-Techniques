clc
clear all
close all
warning off
mu = [0 0];
Sigma = [1 0;
         0 1];
x1 = -3:0.2:3;
x2 = -3:0.2:3;
[X1,X2] = meshgrid(x1,x2);
X = [X1(:) X2(:)];
y = mvnpdf(X,mu,Sigma);
y = reshape(y,length(x2),length(x1));
subplot(2,2,1);
surf(x1,x2,y);
subplot(2,2,3);
pcolor(x1,x2,y);
mu = [0 0];
Sigma = [1 -0.8;
         -0.8 1];
x1 = -3:0.2:3;
x2 = -3:0.2:3;
[X1,X2] = meshgrid(x1,x2);
X = [X1(:) X2(:)];
y = mvnpdf(X,mu,Sigma);
y = reshape(y,length(x2),length(x1));
subplot(2,2,2);
surf(x1,x2,y);
subplot(2,2,4);
pcolor(x1,x2,y)