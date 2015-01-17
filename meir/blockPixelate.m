function res = blockPixelate(block_struct)
blockSize = size(block_struct.data);
res = zeros(blockSize);
a1 = mean2(block_struct.data(:,:,1));
a2 = mean2(block_struct.data(:,:,2));
a3 = mean2(block_struct.data(:,:,3));

% resOnes = ones(blockSize(1), blockSize(2));
res(:,:,1) = a1;% * resOnes;
res(:,:,2) = a2;% * resOnes;
res(:,:,3) = a3;% * resOnes;