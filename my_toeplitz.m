function A = my_toeplitz(r)
% Membuat matriks toeplitz dengan menggunakan konstruk dasar program
% Inputs:
%   - r: baris pertama matriks Toeplitz
% Outputs:
%   - A: matriks Toeplitz

A = [
    [x(1) x(2) x(3) x(4) x(5) x(6) x(7) x(8) x(9) x(10)]
    [x(2) x(1) x(2) x(3) x(4) x(5) x(6) x(7) x(8) x(9)]
    [x(3) x(2) x(1) x(2) x(3) x(4) x(5) x(6) x(7) x(8)]
    [x(4) x(3) x(2) x(1) x(2) x(3) x(4) x(5) x(6) x(7)]
    [x(5) x(4) x(3) x(2) x(1) x(2) x(3) x(4) x(5) x(6)]
    [x(6) x(5) x(4) x(3) x(2) x(1) x(2) x(3) x(4) x(5)]
    [x(7) x(6) x(5) x(4) x(3) x(2) x(1) x(2) x(3) x(4)]
    [x(8) x(7) x(6) x(5) x(4) x(3) x(2) x(1) x(2) x(3)]
    [x(9) x(8) x(7) x(6) x(5) x(4) x(3) x(2) x(1) x(2)]
    [x(10) x(9) x(8) x(7) x(6) x(5) x(4) x(3) x(2) x(1)]
]

end
