function [a3] = inverse_fourier(img)
a=ifft2(img);      % To convert FT
mag=abs(a);       % To remove a imagin
a2=fftshift(mag); % To be shift
a3=log10(a2);   
%imshow(a3);
end

