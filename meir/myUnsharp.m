function img = myUnsharp(imgName)
blockSize = 3;
origin = im2double(imread(imgName));
img = origin;
offset = ceil(blockSize/2);
gOffset = floor(blockSize/2);
mask = ones(1,9) / 9;

img = origin;
height = size(origin,1);
width = size(origin,2);
for x = offset:height-offset
    for y = offset:width-offset
        for chan = 1:size(origin,3)
            block = origin(x-gOffset:x+gOffset, y-gOffset:y+gOffset, chan);
            img(x,y,chan) =  mask * block(:); %median(block(:));
        end
    end
end

            