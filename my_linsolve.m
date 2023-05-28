function x = my_linsolve(aug)
% Menyelesaikan sistem persamaan linear Ax = b
% menggunakan konstruk pemrograman dasar
% Inputs:
%   - aug: Linear system
% Outputs:
%   - x: Vektor solusi


% Melakukan eliminasi gauss matriks augmentasi untuk menghasilkan matriks augmented tereduksi
% ke bentuk eselon baris
echelon = gauss_elim(aug);

% Substitusi balik untuk mendapatkan solusi
x = zeros(10,1);
x(10) = echelon(10,11)/echelon(10,10);

x(9) = reduce(echelon(9,10:10), x(10:10), echelon(9,11), echelon(9,9));
x(8) = reduce(echelon(8,9:10), x(9:10), echelon(8,11), echelon(8,8));
x(7) = reduce(echelon(7,8:10), x(8:10), echelon(7,11), echelon(7,7));
x(6) = reduce(echelon(6,7:10), x(7:10), echelon(6,11), echelon(6,6));
x(5) = reduce(echelon(5,6:10), x(6:10), echelon(5,11), echelon(5,5));
x(4) = reduce(echelon(4,5:10), x(5:10), echelon(4,11), echelon(4,4));
x(3) = reduce(echelon(3,4:10), x(4:10), echelon(3,11), echelon(3,3));
x(2) = reduce(echelon(2,3:10), x(3:10), echelon(2,11), echelon(2,2));
x(1) = reduce(echelon(1,2:10), x(2:10), echelon(1,11), echelon(1,1));

end
