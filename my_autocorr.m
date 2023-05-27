function r = my_autocorr(x, maxlag)
% Menghitung Autokorelasi dari sinyal x sampai dengan maxlag lag value menggunakan konstruk dasar
% Inputs:
%   - x: sinyal pertama
%   - maxlag : 
% Outputs:
%   - r : hasil autokorelasi
%   - lags: time lags yang diasosiasikan dengan setiap nilai korelasi

N = length(x);
r_local = zeros(1, maxlag+1);
output_length = maxlag+1;

for i = 1:output_length
    for j = 1:length(x)-i+1
        r_local(i) = r_local(i) + x(j) * x(i+j-1);
    end
end

% Normalisasi nilainya
r = transpose(r_local/N);

end
