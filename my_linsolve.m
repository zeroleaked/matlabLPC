function x = my_linsolve(A,b)
% Menyelesaikan sistem persamaan linear Ax = b
% menggunakan konstruk pemrograman dasar
% Inputs:
%   - A: Matriks koefisien
%   - b: vektor ruas kanan
% Outputs:
%   - x: Vektor solusi

% Membentuk matriks augmented
aug = [A,b];

% Melakukan eliminasi gauss matriks augmentasi untuk menghasilkan matriks augmented tereduksi
% ke bentuk eselon baris
for j = 2:10
    % Mengeliminasi elemen di bawah pivot
    for i = 1:j-1
        factor = aug(j,i)/aug(i,i);
        aug(j,:) = aug(j,:) - factor*aug(i,:);
    end
end

% Substitusi balik untuk mendapatkan solusi
x = zeros(10,1);
x(10) = aug(n,n+1)/aug(n,n);
for i = n-1:-1:1
    temp = aug(i,i+1:n)*x(i+1:n);
    numerator = aug(i,n+1) - temp;
    x(i) = numerator/aug(i,i);
end

end
