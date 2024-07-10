function [outimage] = midpoint(img)

[r,c,l]=size(img);
noisy_img=imnoise(img,'gaussian');
%figure,imshow(noisy_img);
img=padarray(img,[1,1]);

if l==1

for i=2:r-1
    for j=2:c-1
        out=img(i-1:i+1,j-1:j+1);
       a=max(out(:));
       b=min(out(:));
        outimage(i,j)=(a+b)/2;
    end
end

else
  
 for k=1:3
 for i=2:r-1
    for j=2:c-1
        out=img(i-1:i+1,j-1:j+1,k);
        a=max(out(:));
        b=min(out(:));
        outimage(i,j,k)=(a+b)/2;
    end
    end
 end
%figure,imshow(outimage);
end
end