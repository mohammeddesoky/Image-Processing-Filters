function [binary]=RGB_to_binary(RGB)

b=RGB_to_GRAY(RGB);
binary=gray_to_binary(b);

end