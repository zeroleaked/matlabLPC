function [r, lags] = my_autocorr(x, maxlag)
% Menghitung Autokorelasi dari sinyal x sampai dengan maxlag lag value menggunakan konstruk dasar
% Inputs:
%   - x: sinyal pertama
%   - maxlag : 
% Outputs:
%   - r : hasil autokorelasi
%   - lags: time lags yang diasosiasikan dengan setiap nilai korelasi

N = length(x);
r = zeros(1, maxlag+1);

% Menggunakan for loop untuk menghitung autokorelasi
for k = 1:maxlag+1
    for i=1:N
        shift = mod(i-k, N) + 1;
        r(k) = r(k) + x(i) * x(shift);
    end
end
% Normalisasi nilainya
r = transpose(r/N);

end
