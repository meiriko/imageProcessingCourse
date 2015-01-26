function img = myMedian(imgName, blockSize)
origin = im2double(imread(imgName));
img = origin;
offset = ceil(blockSize/2);
gOffset = floor(blockSize/2);

for x = offset:size(origin,1)-offset
    for y = offset:size(origin,2)-offset
        for chan = 1:size(origin,3)
            block = origin(x-gOffset:x+gOffset, y-gOffset:y+gOffset, chan);
            img(x,y,chan) = median(block(:));
        end
    end
end

            