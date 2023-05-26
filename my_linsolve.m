function x = my_linsolve(A,b)
% Menyelesaikan sistem persamaan linear Ax = b
% menggunakan konstruk pemrograman dasar
% Inputs:
%   - A: Matriks koefisien
%   - b: vektor ruas kanan
% Outputs:
%   - x: Vektor solusi

% Menentukan ukuran matriks koefisien
n = size(A,1);

% Membentuk matriks augmented
aug = [A,b];

% Melakukan eliminasi gauss matriks augmentasi untuk menghasilkan matriks augmented tereduksi
% ke bentuk eselon baris
for i = 1:n-1
    % Mencari elemen pivot
    pivot = aug(i,i);

    % Mengeliminasi elemen di bawah pivot
    for j = i+1:n
        factor = aug(j,i)/pivot;
        eliminator = factor*aug(i,:);
        aug(j,:) = aug(j,:) - eliminator;
    end
end

% Substitusi balik untuk mendapatkan solusi
x = zeros(n,1);
x(n) = aug(n,n+1)/aug(n,n);
for i = n-1:-1:1
    solved = aug(i,i+1:n)*x(i+1:n);
    denom = aug(i,n+1) - solved;
    x(i) = denom/aug(i,i);
end

end
