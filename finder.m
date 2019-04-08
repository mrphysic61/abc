function M=finder(I)

nu=5;
u=svd(I);
u=u(1:nu);
M=u/norm(u);
plot(M)

end