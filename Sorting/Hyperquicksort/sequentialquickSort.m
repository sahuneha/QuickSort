function dataOut = sequentialquickSort(datavalue)
tic
datalen = size(datavalue,2);
ind = cast(floor(datalen/2),'uint8');
j = 1;
k = 1;
L = [];      
R = [];
if(datalen<2)
  dataOut =  datavalue;
else
  pivot = datavalue(ind);
  for i=1:datalen
    if(i~=ind)
      if(datavalue(i)<pivot)
        L(j) = datavalue(i);
        j = j+1;
      else
        R(k) = datavalue(i);
        k = k+1;
      end
    end
  end
  L =sequentialquickSort(L);      %left side
  R = sequentialquickSort(R);     %Right side 
  dataOut = [L pivot R];          %output data

end
n=length(dataOut)
toc
% %running out
% T=n.*log(n)
% % total no of comprasion
% c=1.39.*T
%%Quick sort is an algorithm with O(n.log(n)) average timing complexity. This algorithm is a recursive algorithm. In here it select an element (randomly or middle element of the array) and put elements to left to it if its lesser that it or to right side otherwise till all elements are sorted.
% S=sequentialquickSort([75 91 15  64  21 8  88  54 50  12  47  72 65  54  66 22 83 66 67 0 70 98 99 82 20 40 89 47 19 61 86 85])

