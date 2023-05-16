function [r, lags] = my_autocorr(x, maxlag)
% Menghitung Autokorelasi dari sinyal x sampai dengan maxlag lag value menggunakan konstruk dasar
% Inputs:
%   - x: sinyal pertama
%   - maxlag : 
% Outputs:
%   - r : hasil autokorelasi
%   - lags: time lags yang diasosiasikan dengan setiap nilai korelasi

N = length(x);
lags = -maxlag:maxlag;
r = zeros(1, 2*maxlag+1);

% Menggunakan for loop untuk menghitung autokorelasi
for k = 1:2*maxlag+1
        % korelasi beberapa lag pertama
    if lags(k) < 0
        for i = 1:N+lags(k),
            r(k) = r(k) + x(i) * x(-lags(k)+i);
        end
        % korelasi beberapa lag terakhir
    elseif lags(k) > 0
        for i = 1:N-lags(k),
            r(k) =  r(k) + x(i) * x(lags(k)+i);
        end
        % r(k) = sum(x(1:N-lags(k)) .* x(lags(k)+1:N));
        % korelasi saat kedua sinyal overlap
    else
        for i = 1:N,
            r(k) = r(k) + x(i) * x(i);
        end
    end
end
% Normalisasi nilainya
r = transpose(r/N);

end
