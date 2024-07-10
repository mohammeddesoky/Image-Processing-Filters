function [n] = Butterworth_Low_pass_filter(img)
D0=30;
[H W L]=size(img);
filter = zeros(H,W);
if(L == 1)   % if image is gray
   for i=1:H
       for j=1:W
           dis = sqrt((i - (H/2)).^2 + (j - (W/2)).^2);
           filter(i,j) = 1 / (1 + (dis / D0)^2);
       end
   end
else   % if image is RGB
    for k=1:3
        for i=1:H
           for j=1:W
               dis = sqrt((i - (H/2)).^2 + (j - (W/2)).^2);
               filter(i,j) = 1 / (1 + (dis / D0)^2);
           end
        end
    end
end

f1 = fft2(img);       % To convert FT
f1 = fftshift(f1);    % To be shift

n = f1 .* filter;

n = fftshift(n);     % To be shift
n = ifft2(n);        % To convert inverse FT
n = abs(n);          % To remove a imagin
n = mat2gray(n);     % If n > 255 or n < 0

%imshow(filter);
%figure, imshow(n);
end

