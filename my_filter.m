function y = my_filter(b, a, x)
    filter_len = max(length(a), length(b));
    x_padded = [zeros(1, filter_len) , x];
    y_padded = zeros(length(x) + filter_len, 1);
    for i = 1:length(x),
        past_x = 0;
        for j = 1:length(b),
            past_x = past_x + b(j) * x_padded(filter_len+i-j+1);
        end
        
        past_y = 0;
        for j = 1:length(a)-1,
            past_y = past_y + a(j+1) * y_padded(filter_len+i-j);
        end

        y_padded(filter_len+i) = past_x - past_y;
    end
    y = y_padded(filter_len+1:end);
end