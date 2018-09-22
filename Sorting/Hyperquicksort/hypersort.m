 x=[75 91 15  64  21 8  88  54 50  12  47  72 65  54  66 22 83 66 67 0 70 98 99 82 20 40 89 47 19 61 86 85]
%   x = 128:-1:1;
%  x=512:-1:1;

%open matlabpoll for parrale computation
  matlabpool('open','AttachedFiles',{'hyper1.m','hyper2.m'})
 tic
 [x1 ] = hyper1( x );
[x2 ] = hyper2( x );
%% compare data
a=x1;
b=x2;
dataa = length(a);
datab = length(b);
c=zeros(1,dataa+datab);

inda = 1;      % index to move along vector 'a'
indb = 1;      % index to move along vector 'b'
indc = 1;      % index to move along vector 'c'
while ((inda <= dataa) && (indb <= datab))
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
while (inda <= dataa)
  c(indc) = a(inda);
  indc = indc + 1;
  inda = inda + 1;
end
% copy any remaining elements of the 'b' into 'c'
while (indb <= datab)
  c(indc) = b(indb);
  indc = indc + 1;
  indb = indb + 1;
end
c
toc
%close parrale computation
matlabpool close