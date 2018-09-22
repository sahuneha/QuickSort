
%Sequential quick sort
%   datavalue=[75 91 15  64  21 8  88  54 50  12  47  72 65  54  66 22 83 66 67 0 70 98 99 82 20 40 89 47 19 61 86 85]
tic
%      datavalue = 128:-1:1;
  datavalue=512:-1:1;

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
  end
  dataOut = [L pivot R];          %partition around pivot

n = length(L);
while n ~= 0
    nn = 0;
    for ii = 1:n-1
        if L(ii) > L(ii+1)
            [L(ii+1),L(ii)] = deal(L(ii), L(ii+1));
            nn = ii;
        end
        while (L>pivot)
    continue
      
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
         while (R<pivot)
    continue
  
        
        end
    end
    n = nn;
end

new_data=[L pivot R]

    
n=length(new_data);

toc
