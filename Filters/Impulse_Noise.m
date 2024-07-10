function [img] = Impulse_Noise(img)
salt=.1;
pepper=.1;
[H W L] = size(img);

%imshow(img), title("Before");

num_of_salt = round(H*W*salt);      % number of salt of image
num_of_pepper = round(H*W*pepper);  % number of pepper of image

for k=1 : L
   
    for i=1:num_of_salt
       row = ceil(rand(1,1)*H);    % random places to put salts in row
       col = ceil(rand(1,1)*W);    % random places to put salts in col
       img(row,col,k) = 255;
    end
    
    for i=1:num_of_pepper
       row = ceil(rand(1,1)*H);    % random places to put peppers in row
       col = ceil(rand(1,1)*W);    % random places to put peppers in col
       img(row,col,k) = 0;
    end
end

%figure, imshow(img),title("After");
end

