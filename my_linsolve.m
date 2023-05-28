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

solved = echelon(9,10:10)*x(10:10);
denom = echelon(9,11) - solved;
x(9) = denom/echelon(9,9);

solved = echelon(8,9:10)*x(9:10);
denom = echelon(8,11) - solved;
x(8) = denom/echelon(8,8);

solved = echelon(7,8:10)*x(8:10);
denom = echelon(7,11) - solved;
x(7) = denom/echelon(7,7);

solved = echelon(6,7:10)*x(7:10);
denom = echelon(6,11) - solved;
x(6) = denom/echelon(6,6);

solved = echelon(5,6:10)*x(6:10);
denom = echelon(5,11) - solved;
x(5) = denom/echelon(5,5);

solved = echelon(4,5:10)*x(5:10);
denom = echelon(4,11) - solved;
x(4) = denom/echelon(4,4);

solved = echelon(3,4:10)*x(4:10);
denom = echelon(3,11) - solved;
x(3) = denom/echelon(3,3);

solved = echelon(2,3:10)*x(3:10);
denom = echelon(2,11) - solved;
x(2) = denom/echelon(2,2);

solved = echelon(1,2:10)*x(2:10);
denom = echelon(1,11) - solved;
x(1) = denom/echelon(1,1);

end
