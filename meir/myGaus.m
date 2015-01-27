function img = myGaus(imgName, blockSize, g)
origin = im2double(imread(imgName));
img = origin;
offset = ceil(blockSize/2);
gOffset = floor(blockSize/2);
gMatrix = gausswin(blockSize,g) * gausswin(blockSize,g)';
gSum = sum(sum(gMatrix));

for x = offset:size(origin,1)-offset
    for y = offset:size(origin,2)-offset
        for chan = 1:size(origin,3)
            img(x,y,chan) = sum(sum(origin(x-gOffset:x+gOffset, y-gOffset:y+gOffset, chan) .* gMatrix))/gSum;
        end
    end
end

            