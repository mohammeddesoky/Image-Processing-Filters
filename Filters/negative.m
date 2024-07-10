function [image_new] = negative(image_old)
[H W L] = size(image_old);
%image_new = zeros(H,W);
for i=1 : H
    for j=1 : W
        if L == 1
            image_new(i,j) = (255 - image_old(i,j));
        else
          for ch=1 : 3
              image_new(i,j,ch) = (255 - image_old(i,j,ch));
          end
        end
    end
end
end

