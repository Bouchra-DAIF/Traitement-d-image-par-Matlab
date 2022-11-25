function detecter_contours()
    a=imread('image.jpg');
    [n,m]=size(a);
    b=zeros(n,m);
    for i=2:n-1
        for j=2:m-1
            new = double((a(i,j-1)-a(i,j+1))^2+(a(i-1,j)-a(i+1,j))^2);
            b(i,j)=255-sqrt(new);
        end
    end
figure;imshow(a);
title('image originale')
b=uint8(b);
figure;imshow(b);
title('image resultat');
imwrite(b,'image_detecter.jpg')
