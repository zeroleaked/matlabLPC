function echelon = gauss_elim(aug)
% Menyelesaikan sistem persamaan linear Ax = b
% menggunakan konstruk pemrograman dasar
% Inputs:
%   - A: Matriks koefisien
%   - b: vektor ruas kanan
% Outputs:
%   - x: Vektor solusi

% Menentukan ukuran matriks koefisien
echelon = aug;
n = 10;

% Melakukan eliminasi gauss matriks augmentasi untuk menghasilkan matriks augmented tereduksi
% ke bentuk eselon baris
for i = 1:n-1
    % Mencari elemen pivot
    pivot = echelon(i,i);

    % Mengeliminasi elemen di bawah pivot
    for j = i+1:n
        factor = echelon(j,i)/pivot;
        eliminator = factor*echelon(i,:);
        echelon(j,:) = echelon(j,:) - eliminator;
    end
end

end
