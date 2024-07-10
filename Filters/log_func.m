function [new_img]=log_func(img)

[H W L]=size(img);
new_img=zeros(H,W);
img=im2double(img);

for i=1:H
    for j=1:W
        if L==3
            new_img(i,j,1)=2*log(img(i,j,1)+1);
            new_img(i,j,2)=2*log(img(i,j,2)+1);
            new_img(i,j,3)=2*log(img(i,j,3)+1);
        else
            new_img(i,j)=2*log(img(i,j)+1);
        end
    end
end

new_img=im2uint8(new_img);

end