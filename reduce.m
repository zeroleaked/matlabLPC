function y = reduce(echelon_row, presolved, result, pivot)
% Menyelesaikan sistem persamaan linear Ax = b
% menggunakan konstruk pemrograman dasar
% Inputs:
%   - aug: Linear system
% Outputs:
%   - x: Vektor solusi


% Melakukan eliminasi gauss matriks augmentasi untuk menghasilkan matriks augmented tereduksi
% ke bentuk eselon baris

% Substitusi balik untuk mendapatkan solusi
solved = echelon_row * presolved;
denom = result - solved;
y = denom / pivot;

end
