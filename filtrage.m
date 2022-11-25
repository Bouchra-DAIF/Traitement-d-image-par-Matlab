function filtrage()
    A = 'image.png';
    F = [1 1 1;1 1 1;1 1 1]/9;
    A = imread(A);
    [n,m] = size(A);
    im2 = zeros(n,m);
    for i=2:n-1
        for j=2:m-1
            im2(i,j) = F(1,1)*A(i-1,j-1)+F(1,2)*A(i-1,j)+F(1,3)*A(i-1,j+1)+F(2,1)*A(i,j-1)+F(2,2)*A(i,j)+F(2,3)*A(i,j+1)+F(3,1)*A(i+1,j-1)+F(3,2)*A(i+1,j)+F(3,3)*A(i+1,j+1);
        end
    end

figure;imshow(A);
im2=uint8(im2);
title('image originale')
figure;imshow(im2);
title('image filtrer')
imwrite(im2,'image_filter.jpg');