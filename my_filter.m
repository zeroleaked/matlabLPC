function y = my_filter(b, a, x)
    % y_size = length(x);
    y = zeros(length(x), 1);
    for i = 1:length(x),
        past_x = 0;
        for j = 1:length(b),
            lag = mod(i-j, length(x))+1;
            past_x = past_x + b(j) * x(lag);
        end

        past_y = 0;
        for j = 1:length(a)-1,
            lag = mod(i-j-1, length(x))+1;
            past_y = past_y + a(j+1) * y(lag);
        end

        y(i) = past_x - past_y;
    end
end