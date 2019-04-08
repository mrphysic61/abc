function sym=Let(im,bol,nu)
i=imread(im);
if size(i,3)==3
    i=rgb2gray(i);
end
t=0.5;
i=~im2bw(i,t);
if bol
    figure
    imshow(i);
end
u=1;
i=bwareaopen(i,u);
siz=size(i);
b=true;
c=false;
d=true;
x=[];
y=x;
for j=1:siz(1);
    for k=1:siz(2);
        if b && ~c && i(j,k)==1
            b=false;
            break;
        end
        if c
            d=d&~i(j,k);
            if ~d
                break;
            end
        end
        b=true;
    end
    if c&&d
        y=[y j];
        b=true;
        c=false;
    end
    if ~b
        c=true;
        x=[x j];
    end
    d=true;
end
rows={};
for k=1:length(x);
    rows{end+1}=i(x(k):y(k),:);
    %figure
    %imshow(rows{end});
end
k=0;
symbols={};
for n=1:length(x);
    siz=size(rows{n});
    b=true;
    c=false;
    d=true;
    x=[];
    y=x;
    for q=1:siz(2);
        for p=1:siz(1);
            if b && ~c && rows{n}(p,q)==1
                b=false;
                break;
            end
            if c
                d=d&~rows{n}(p,q);
                if ~d
                    break;
                end
            end
            b=true;
        end
        if c&&d
            y=[y q];
            b=true;
            c=false;
        end
        if d&&~b
            c=true;
            x=[x q];
        end
        d=true;
    end
    for p=1:length(x);
        a=(rows{n}(:,x(p):y(p)));
        alp=a(any(a,2),:);
%         if bol
%             alp=Res(alp');
%             figure
%             imshow(alp);
%         end
        %figure
        %imshow(alp);
        symbols{end+1}=alp;
    end
    k=k+length(x);
end
al=nu-1;
sym={};
m=200;
for k=1:length(symbols)
    u=svd(double(symbols{k}));
    %u=u(u>1);
    len=length(u);
    if len>al
        u=u(end-al:end);
    else
        u=[zeros(al+1-len,1);u];
    end
    u=u/norm(u);
##     if ~bol
##         figure
##         plot(u);
##     end
    u=[zeros(m-length(u),1)' u']';
    sym{end+1}=u;
end
end