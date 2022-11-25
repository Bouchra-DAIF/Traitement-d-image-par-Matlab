function contraste2()
    im = 'image.png';
    [n,m] = size(im);
    im2 = zeros(n,m);
    for i=1:n
        for j=1:m
            if im(i,j) <0 
                im2(i,j) = 0;
            elseif im(i,j) > 255 
                im2(i,j) = 255;
            else 
                im2(i,j) = im(i,j) + (0.4 * (im(i,j) - 127)) ;
            end
        end
    end

figure;imshow(im);
im2=uint8(im2);
title('image originale')
figure;imshow(im2);
title('image contraste')
imwrite(im2,'image2.jpg');