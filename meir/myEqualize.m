function [ img, origin, ds, de ] = myEqualize( imageName )
%MYEQUALIZE Summary of this function goes here
%   Detailed explanation goes here
    img = imread(imageName);
    origin = img;
    d = imhist(img);
    ds = d / (size(img,1)*size(img,2));
    vSize = size(ds,1)
    acc = 0;
    
    for i = 1:vSize
        de(i) = round(acc*(vSize-1));
        acc = acc + ds(i);
    end
    
    for x = 1:size(img,1)
        for y = 1:size(img,2)
            img(x,y) = de(img(x,y));
        end
    end
end

