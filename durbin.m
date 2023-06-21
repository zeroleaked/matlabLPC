function a = durbin(r0, r, m)
% r0  - Zero lag autocorrelation
% r   - Autocorrelation for lags 1 to m
% m   - Predictor order
% a   - LP coefficients

% INITIALIZATION
a = zeros(m+1,1);
k = zeros(m+1,1);
tmp = zeros(m-1,1);
a(1) = 1;
E = r0;
a(2) = -r(1) / r0;
k(1) = a(2);
q = r(1);

% RECURSION
for i = 1:m-1
    E = E + q * k(i);
    q = r(i+1);
    % q = q + sum( r(1:i) .* a(i+1:-1:2));
    for j = 1:i
        q = q + r(j) * a(i+2-j);
    end
    k(i+1) = -q / E;
    % tmp(1:i) = k(i+1) .* a(i+1:-1:2);
    for j = 1:i
        tmp(j) = k(i+1) * a(i+2-j);
    end
    % a(2:i+1) = a(2:i+1) + tmp(1:i)';
    for j = 1:i
        a(j+1) = a(j+1) + tmp(j);
    end
    a(i+2) = k(i+1);
end

end
