function [origin res resR] = myJpeg(imgName, quant, show)
if(nargin < 3)
    show = false;
end
%if(nargin < 2 || quant < 1)
%    quant = 1;
%else
    %quant = floor(quant);
%end

origin = imread(imgName);
I = rgb2ycbcr(origin);
I1 = double(I);%im2double(I);
dim = [8 8];
quantDct = @(blk) round(myDct(blk)./quant).*quant;
%res = floor(blockproc(I1, dim, @myDct)./quant).*quant;
res = blockproc(I1, dim, quantDct);
resR = ycbcr2rgb(uint8(blockproc(res, dim, @myUnDct)));
%res = ycbcr2rgb(uint8(res));
res = uint8(res);
if(show)
    imshow(resR);
end