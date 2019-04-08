function t=texter(R)

n=65;

az='AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz.,0123456789-';
[aa,indices]=sort(R,'descend');
for i=1:n
    if R(indices(i))>0.04
        t(i)=az(indices(i));
    end
end

end