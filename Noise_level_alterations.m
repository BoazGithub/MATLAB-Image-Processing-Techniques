clr;
I=imread(einstein.jpg');

A=imnoise(I,'salt & pepper',0.06);
B=imnoise(I,'poisson');
C=imnoise(I,'gaussian', 0);
D=imnoise(I,'speckle');

subplot(2,2,1), imshow(A); title('salt & pepper 0.06');
subplot(2,2,2), imshow(B); title('poisson noise');
subplot(2,2,3), imshow(C); title('gaussian noise');
subplot(2,2,4), imshow(C); title('speckle noise');

