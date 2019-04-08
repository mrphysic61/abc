function I=matrixer(v)

n=80;

I=zeros(n);

for i=1:n
    I(i,:)=v(n*(i-1)+1:n*i);
end

end