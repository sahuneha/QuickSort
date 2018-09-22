 
x=[75 91 15  64  21 8  88  54 50  12  47  72 65  54  66 22 83 66 67 0 70 98 99 82 20 40 89 47 19 61 86 85]
%    x = 128:-1:1;
%   x=512:-1:1;


 %open matlabpoll for parrale computation
  matlabpool('open','AttachedFiles',{'task1.m','task2.m'})
 tic
 [new_data ] = task1( x );
[new_data1 ] = task2( x );
%% compare data
a=new_data;
b=new_data1;
lena = length(a);
lenb = length(b);
c=zeros(1,lena+lenb);

inda = 1;      % index to move along vector 'a'
indb = 1;      % index to move along vector 'b'
indc = 1;      % index to move along vector 'c'
while ((inda <= lena) && (indb <= lenb))
 if a(inda) < b(indb)
    c(indc) = a(inda);
    inda = inda + 1;
 else
    c(indc) = b(indb);
    indb = indb + 1;
 end
 indc = indc + 1;
end

% % copy any remaining elements of the 'a' into 'c'
while (inda <= lena)
  c(indc) = a(inda);
  indc = indc + 1;
  inda = inda + 1;

end
% copy any remaining elements of the 'b' into 'c'
while (indb <= lenb)
  c(indc) = b(indb);
  indc = indc + 1;
  indb = indb + 1;
  c
end

toc
%parrale computation close
matlabpool close