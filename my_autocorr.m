function r = my_autocorr(x)
% Menghitung Autokorelasi dari sinyal x sampai dengan maxlag lag value menggunakan konstruk dasar
% Inputs:
%   - x: sinyal pertama
%   - maxlag : 
% Outputs:
%   - r : hasil autokorelasi
%   - lags: time lags yang diasosiasikan dengan setiap nilai korelasi
r_local = zeros(1, 11);

for i = 1:11
    for j = 1:160-i+1
        prod = x(j) * x(j+i-1);
        r_local(i) = r_local(i) + prod;
    end
end

% Normalisasi nilainya
r = transpose(r_local*0.00625);

end
