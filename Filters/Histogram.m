function [histogram] = Histogram(image)
[H, W, L] = size(image);

if L == 1
    histogram = zeros(256, 1);
    
    for i = 1:H
        for j = 1:W
            histogram(image(i, j) + 1) = histogram(image(i, j) + 1) + 1;
        end
    end
    
else
    histogram = zeros(256, 3);  % 3D array to store histograms for each color channel
    
    for i = 1:H
        for j = 1:W
            histogram(image(i, j, 1) + 1, 1) = histogram(image(i, j, 1) + 1, 1) + 1;
            histogram(image(i, j, 2) + 1, 2) = histogram(image(i, j, 2) + 1, 2) + 1;
            histogram(image(i, j, 3) + 1, 3) = histogram(image(i, j, 3) + 1, 3) + 1;
        end
    end
    
   % figure;
    %subplot(2, 1, 1), bar(0:255, histogram(:, 1), 'r'), title('Red Histogram');
    %subplot(2, 2, 3), bar(0:255, histogram(:, 2), 'g'), title('Green Histogram');
    %subplot(2, 2, 4), bar(0:255, histogram(:, 3), 'b'), title('Blue Histogram');

end

end