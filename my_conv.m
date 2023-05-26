function y = my_conv(b, x)
    % Menentukan panjang sinyal b dan x
    lenB = length(b);
    lenX = length(x);
    
    % Menentukan panjang sinyal hasil konvolusi
    lenY = lenB + lenX - 1;
    
    % Inisiasi nilai sinyal output ke nol semua
    y = zeros(1, lenY);
    
    % Melakukan proses konvolusi sesuai definisinya untuk sinyal diskret
    for n = 1:lenY
        for k = 1:lenB
            shift = mod(n - k, lenX) + 1;
            y(n) = y(n) + b(k) * x(shift);
        end
    end
end
