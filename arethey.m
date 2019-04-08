function r=arethey(i1,i2)

im1=imread(i1);
if size(im1,3)==3
    im1=rgb2gray(im1);
end
t1=0.5;
im1=~im2bw(im1,t1);
v1=double(vectorer(im1));
im2=imread(i2);
if size(im2,3)==3
    im2=rgb2gray(im2);
end
t2=0.5;
im2=~im2bw(im2,t2);
v2=double(vectorer(im2));
r=dot(v1,v2)/(norm(v1)*norm(v2));

end