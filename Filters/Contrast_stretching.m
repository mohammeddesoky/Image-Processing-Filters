function [image_new] = Contrast_stretching(image_old)
[H W L] = size(image_old);
image_new = zeros(H,W);
image_new = double(image_new);


if (L==1)
    oldmin = min(min(image_old));
    oldmax = max(max(image_old));
    for i=1 : H
    for j=1 : W
        image_new(i,j)=(image_old(i,j)-oldmin)*(255/(oldmax-oldmin))+ 0;
    end
    end
%bar(image_new);

else
for k = 1 : 3
    oldmin = min(min(image_old(:,:,k)));
    oldmax = max(max(image_old(:,:,k)));
    for i=1 : H
        for j=1 : W
            image_new(i,j,k)=(image_old(i,j,k)-oldmin)*(255/(oldmax-oldmin));
        end
    end
   % bar(image_new);
end
end

image_new = uint8(image_new);
end
