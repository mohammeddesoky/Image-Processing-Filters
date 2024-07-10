function [result] = Histogram_Equalization(image)
[H W L]=size(image);
histogram = zeros(256,1);
probalty = zeros(256,1);
probalty = double(probalty);
sk = zeros(256,1);
result = zeros(H,W);
result = uint8(result);
for k=1 : L
    for i=1 : H
        for j=1 : W
            histogram(image(i,j,k) + 1) = histogram(image(i,j,k) + 1) + 1;
            probalty(image(i,j,k) + 1) = histogram(image(i,j,k) + 1) / (H * W);
        end
    end
end
sum = 0;
sum = double(sum);
for i=1 : 256
    sum = sum + probalty(i);
    sk(i) = 255 * sum;
end
for k=1 : L
    for i=1 : H
        for j=1 : W
            result(i,j,k) = sk(image(i,j,k) + 1);
        end
    end
end

%imshow(result);
end