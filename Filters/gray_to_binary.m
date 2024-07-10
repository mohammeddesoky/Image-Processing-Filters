function [binary]=gray_to_binary(gray)
threshold=120;
[H W]=size(gray);
binary=zeros(H,W);

for i =1:H
    for j=1:W
        if gray(i,j)<threshold
            binary(i,j)=0;
        end
       if gray(i,j)>=threshold
            binary(i,j)=1;
       end
    end
end      
binary=logical(binary);
end