function res = myPixalate(imgName, dim, show)
if(nargin < 3)
    show = false;
end

I = imread(imgName);
I1 = im2double(I);
if(size(dim,2) == 2)
    blockDim = dim;
else
    blockDim = [dim,dim];
end
res = blockproc(I1, blockDim, @blockPixelate);
if(show)
    imshow(res)
end