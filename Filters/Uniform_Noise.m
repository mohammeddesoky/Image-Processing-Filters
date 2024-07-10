function [new_img] = Uniform_Noise(img)
a=1;
b=2;
[H W L] = size(img);
img = double(img);

%imshow(img), title("Before");

num_of_pixel = round((1/(b-a))*H*W);

for k=1:L
    for z=1:255
        for i=1:num_of_pixel
           row = ceil(rand(1,1)*H);
           col = ceil(rand(1,1)*W);
           img(row,col,k) = img(row,col,k)+z;
        end
    end
end

for ch=1:L
    oldmin = min(min(img(:,:,ch)));
    oldmax = max(max(img(:,:,ch)));
    new_img(:,:,ch) = ((img(:,:,ch)-oldmin) / (oldmax-oldmin))*255;
end

new_img = uint8(new_img);

%figure, imshow(new_img),title("After");

end