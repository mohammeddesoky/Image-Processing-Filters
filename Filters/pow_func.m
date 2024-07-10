function [new_img]=pow_func(img)

[H W L]=size(img);
new_img=zeros(H,W);
img=im2double(img);

for i=1:H
    for j=1:W
        if(L==3)
            new_img(i,j,1)=(img(i,j,1)^2);
            new_img(i,j,2)=(img(i,j,2)^2);
            new_img(i,j,3)=(img(i,j,3)^2);
            
        else
            new_img(i,j)=(img(i,j)^2);
        end
    end
end
          
new_img=im2uint8(new_img);

end