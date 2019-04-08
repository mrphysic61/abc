function v=vectorer(im)

n=275;

v=[];
for i=1:n
    v=[v im(i,:)];
end

end