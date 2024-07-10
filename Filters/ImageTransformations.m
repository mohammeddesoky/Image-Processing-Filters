function [] = ImageTransformations(image_old, type) 
switch type
    case 'log'
        log_func(image_old);
    case 2
        inverse_log(image_old);
    case 3
        pow_func(image_old);
    case 4
        root_func(image_old);
    case 5
        Negative2(image_old);
end
end
