function [B] = max_filter(img)
M=3;
N=3;
img=padarray(img,[1,1]);
[h ,w ,l] =size(img);
B = zeros(h ,w);
if l==1
 for i = 2:h-1
    for j = 2:w-1
        temp = img(i-1:i+1,j-1:j+1);
          B(i,j) = max(temp(:));    
    end
 end

 B = uint8(B);
else
  for k=1:3
   for i = 2:h-1
    for j = 2:w-1
        temp = img(i-1:i+1,j-1:j+1,k);

          B(i,j,k) = max(temp(:));
  end
    end
  end
B = uint8(B);
end