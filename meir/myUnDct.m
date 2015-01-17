function res = myUnDct(block_struct)
m = dctmtx(8)';
tmp = arrayfun(@(ind) m * block_struct.data(:,:,ind),1:size(block_struct.data,3),'uni',0);
res = cat(3,tmp{:});

