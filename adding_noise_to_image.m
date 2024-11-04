% let us add some noise to our image
imageNoise= imread(('einstein.jpg'));
imshow(imageNoise);
I=imnoise(imageNoise, 'salt & pepper',0.06);
imshow(I);