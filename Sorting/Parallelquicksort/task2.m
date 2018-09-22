
function [new_data1 ] = task2( x )
%% for half data
k=1;
j = 1;
k = 1;
L = [];      
R = [];
kk=2;
length_of_x=numel(x);
new_length=ceil(length_of_x/kk);


% % Select pivot (random pivot)
 x2=x(new_length+1:end)
 datalen1 = size(x2,2);
 ind1 = cast(floor(datalen1/2),'uint8');
if(datalen1<2)
   dataOut = x2;
 else
   pivot1 = x2(ind1)
  for i=1:datalen1
     if(i~=ind1)
      if(x2(i)<pivot1)
        L(j) = x2(i);
         j = j+1;
       else
         R(k) = x2(i);
        k = k+1;
       end
     end
   end
end

 dataout1=[L pivot1 R]

n = length(L);
while n ~= 0
    nn = 0;
    for ii = 1:n-1
        if L(ii) > L(ii+1)
            [L(ii+1),L(ii)] = deal(L(ii), L(ii+1));
            nn = ii;
        end
    end
    n = nn;
end

n = length(R);
while n ~= 0
    nn = 0;
    for ii = 1:n-1
        if R(ii) > R(ii+1)
            [R(ii+1),R(ii)] = deal(R(ii), R(ii+1));
            nn = ii;
        end
    end
    n = nn;
end


L1=L;

R1=R;
new_data1=[L1 pivot1 R1]
