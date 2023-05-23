function [y] = my_autocorr(x)
% Menghitung Autokorelasi dari sinyal x sampai dengan maxlag lag value menggunakan konstruk dasar
% Inputs:
%   - x: sinyal pertama
%   - maxlag : 
% Outputs:
%   - y : hasil autokorelasi
%   - lags: time lags yang diasosiasikan dengan setiap nilai korelasi

y = zeros(1, 11);

y(1) = x' * x;
y(2) = x(2:80)' * x(1:79);
y(3) = x(3:80)' * x(1:78);
y(4) = x(4:80)' * x(1:77);
y(5) = x(5:80)' * x(1:76);
y(6) = x(6:80)' * x(1:75);
y(7) = x(7:80)' * x(1:74);
y(8) = x(8:80)' * x(1:73);
y(9) = x(9:80)' * x(1:72);
y(10) = x(10:80)' * x(1:71);
y(11) = x(11:80)' * x(1:70);

% Normalisasi nilainya
y = y * 0.0125;

end
