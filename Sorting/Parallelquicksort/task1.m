function [new_data ] = task1( x )
k=1;
j = 1;
k = 1;
L = [];      
R = [];
kk=2;

length_of_x=numel(x);
new_length=ceil(length_of_x/kk);
x1=x(1:new_length);
 pos = randi(length(x1));

% % Select pivot (random pivot)
 datalen = size(x1,2);
 ind = cast(floor(datalen/2),'uint8');


if(datalen<2)
   dataOut = x1;
 else
   pivot = x1(ind)
  for i=1:datalen
     if(i~=ind)
      if(x1(i)<pivot)
        L(j) = x1(i)
         j = j+1;
       else
         R(k) = x1(i);
        k = k+1;
       end
     end
   end
end

 dataout=[L pivot R]

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

new_data=[L pivot R]


     

end



