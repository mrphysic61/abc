function [R,text,sym1,sym2]=Core(im1,im2,n)
text='';
%az='AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz.,0123456789-';
%az='AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
az='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
%az='AAAAAAAA';
sym1=Let(im1,0,n);
sym2=Let(im2,0,n);
R=zeros(length(sym1),length(sym2));
for i=1:length(sym1)
    for j=1:length(sym2)
        R(i,j)=sym1{i}'*sym2{j}/(norm(sym1{i})*norm(sym2{j}));
    end
end
for i=1:length(sym1)
    sym1{i}=sym1{i}/norm(sym1{i});
end
for j=1:length(sym2)
    [M,I]=max(R(:,j));
    text=[text az(I)];
end
end