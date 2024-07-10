function [gray]=RGB_to_GRAY(RGB)

[H W L]=size(RGB);
gray=zeros(H,W);
gray=double(gray);

for i=1:H
    for j=1:W
        gray(i,j)=0.2*RGB(i,j,1)+0.3*RGB(i,j,2)+0.5*RGB(i,j,3);
    end
end

gray=uint8(gray);
end