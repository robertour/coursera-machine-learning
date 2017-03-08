function [X] = get_mat(directory)

#count the number of samples in the directory
D = dir([directory, '']);
samples = length(D(not([D.isdir])));

X = zeros(samples,2500);


for ind = 1:samples
    im = imread(strcat( strcat(directory, int2str(ind)) , ".jpeg"));
    X(ind,:) = im(:);
endfor
