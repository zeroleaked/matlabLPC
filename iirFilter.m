function y = iirFilter(a, x)
    % Menentukan panjang array
    lenA = length(a);
    lenX = length(x);
    
    % Melakukan zero-padding pada sinyal input jika diperlukan
    if lenA > lenX
        x = [x, zeros(1, lenA - lenX)];
    end
    
    % Melakukan inisialisasi sinyal output
    y = zeros(size(x));
    
    % Menerapkan filter IIR
    for n = 1:lenX
        y(n) = x(n);
        for k = 2:min(n, lenA)
            y(n) = y(n) - a(k) * y(n - k + 1);
        end
    end
end
