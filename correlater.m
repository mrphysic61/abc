function R=correlater(M,s)

n=65;

R=zeros(n,1);
m=mean(s')';

for i=1:n
        R(i)=dot(s(:,i)-m,M-m);
end

end