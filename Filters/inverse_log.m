function [new_img]=inverse_log(img)

[H W L]=size(img);
new_img=zeros(H,W);

img=im2double(img);

for i=1:H
    for j=1:W
        if L==3
            new_img(i,j,1)=exp(img(i,j,1)-1);
            new_img(i,j,2)=exp(img(i,j,2)-1);
            new_img(i,j,3)=exp(img(i,j,3)-1);
        end
        if(L==1)
            new_img(i,j)=exp(img(i,j)-1);
        end
    end
end
    new_img=im2uint8(new_img);
end