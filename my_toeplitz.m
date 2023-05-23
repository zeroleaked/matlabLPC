function A = my_toeplitz(r)
% Membuat matriks toeplitz dengan menggunakan konstruk dasar program
% Inputs:
%   - r: baris pertama matriks Toeplitz
% Outputs:
%   - A: matriks Toeplitz

A = [
    [r(1) r(2) r(3) r(4) r(5) r(6) r(7) r(8) r(9) r(10)]
    [r(2) r(1) r(2) r(3) r(4) r(5) r(6) r(7) r(8) r(9)]
    [r(3) r(2) r(1) r(2) r(3) r(4) r(5) r(6) r(7) r(8)]
    [r(4) r(3) r(2) r(1) r(2) r(3) r(4) r(5) r(6) r(7)]
    [r(5) r(4) r(3) r(2) r(1) r(2) r(3) r(4) r(5) r(6)]
    [r(6) r(5) r(4) r(3) r(2) r(1) r(2) r(3) r(4) r(5)]
    [r(7) r(6) r(5) r(4) r(3) r(2) r(1) r(2) r(3) r(4)]
    [r(8) r(7) r(6) r(5) r(4) r(3) r(2) r(1) r(2) r(3)]
    [r(9) r(8) r(7) r(6) r(5) r(4) r(3) r(2) r(1) r(2)]
    [r(10) r(9) r(8) r(7) r(6) r(5) r(4) r(3) r(2) r(1)]
];

end
