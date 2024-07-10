function [new_img]=root_func(img)

[H W L]=size(img);
new_img=zeros(H,W);
img=im2double(img);

for i=1:H
    for j=1:W
        if(L==3)
            new_img(i,j,1)=sqrt(img(i,j,1));
            new_img(i,j,2)=sqrt(img(i,j,2));
            new_img(i,j,3)=sqrt(img(i,j,3));
            
        else
            new_img(i,j)=sqrt(img(i,j));
        end
    end
end
           
new_img=im2uint8(new_img);
end