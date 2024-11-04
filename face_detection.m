%detecting features
a = imread('einstein.jpg');
%a = imresize(a,0.25);
detector = vision.CascadeObjectDetector('Mouth');

detector.MergeThreshold = 140;

bbox = step(detector, a);
videoOut = insertObjectAnnotation(a,'rectangle',bbox,'Mouth');
imshow(videoOut);