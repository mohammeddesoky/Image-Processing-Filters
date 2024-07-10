function [img_new] = average(img)
[H W L] =size(img);
img_new = zeros(H,W);

filter = [1 1 1;1 1 1;1 1 1];
filter = double(filter);

p=1;
img = double(padarray(img,[p,p]));
if(L == 1)
    for i=2:H-1
        for j=2:W-1
            s = img(i-1:i+1,j-1:j+1);
            sum1 = sum(sum(s.*filter))/9;
            img_new(i,j)=sum1;
            if (img_new(i,j) > 255)
                img_new(i,j) = 255;
            elseif (img_new(i,j) < 0)
                img_new(i,j) = 0;
            end
        end
    end  
else
    for k=1:3
        for i=2:H-1
            for j=2:W-1
                s = img(i-1:i+1,j-1:j+1,k);
                sum1 = sum(sum(s.*filter))/9;
                img_new(i,j,k) = sum1;
                if (img_new(i,j,k) > 255)
                    img_new(i,j,k) = 255;
                elseif (img_new(i,j,k) < 0)
                    img_new(i,j,k)=0;
                end
            end
        end
    end
end
img_new = uint8(img_new);
end