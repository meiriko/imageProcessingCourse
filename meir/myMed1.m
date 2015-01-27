function [ img ] = myMed1(inImg, blockSize)
%MYMED1 Summary of this function goes here
%   Detailed explanation goes here
if(isa(inImg,'char')) then
    origin = imread(inImg);
else
    origin = inImg;
end

img = origin;
br = floor(blockSize/2);
width = size(origin,1);
height = size(origin,2);

for x = 1:width
    for y = 1:height
        for chan = 1:size(origin,3)
            xStart = max(1, x - br);
            xEnd = min(width, x + br);
            yStart = max(1, y - br);
            yEnd = min(height, y + br);
            block = origin(xStart:xEnd, yStart:yEnd, chan);
            img(x,y,chan) = median(block(:));
        end
    end
end


