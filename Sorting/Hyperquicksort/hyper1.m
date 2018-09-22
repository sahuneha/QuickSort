function [x1 ] = hyper1( x )
j = 1;
k = 1;
L = [];      
R = [];
kk=2;  %no of processor
length_of_x=numel(x);
new_length=ceil(length_of_x/kk);
x1=x(1:new_length)

% % Select pivot (random pivot)
 datalen = size(x1,2);
 ind = cast(floor(datalen/2),'uint8');
x1 =sequentialquickSort(x1);      
% pivot=median(x1);