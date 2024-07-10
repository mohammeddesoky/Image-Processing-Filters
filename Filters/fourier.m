function [a3] = fourier(img)
a=fft2(img);      % To convert FT
mag=abs(a);       % To remove a imagin
a2=fftshift(mag); % To be shift
a3=log10(a2);   
%imshow(a3);
end